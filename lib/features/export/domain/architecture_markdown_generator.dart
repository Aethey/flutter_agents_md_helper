import '../../../shared/models/architecture_state.dart';
import '../../../shared/models/knowledge_bundle.dart';
import '../../../shared/models/technology.dart';
import '../../wizard/domain/decision_engine.dart';

class ArchitectureMarkdownGenerator {
  const ArchitectureMarkdownGenerator();

  String generate({
    required KnowledgeBundle bundle,
    required ArchitectureState state,
    required String languageCode,
  }) {
    final engine = DecisionEngine(bundle);
    final buffer = StringBuffer();
    buffer.writeln('# FLUTTER_ARCHITECTURE.md');
    buffer.writeln();
    buffer.writeln(_intro(languageCode));
    buffer.writeln();
    buffer.writeln(
      _line(languageCode, 'Knowledge version', bundle.index.version),
    );
    buffer.writeln();
    buffer.writeln(_heading(languageCode, 'Project characteristics'));
    _writeGroup(buffer, bundle, engine, state, 'requirements', languageCode);

    buffer.writeln(_heading(languageCode, 'Architecture decisions'));
    for (final group in bundle.flow.groups) {
      if (group.id == 'requirements') {
        continue;
      }
      _writeGroup(buffer, bundle, engine, state, group.id, languageCode);
    }

    buffer.writeln(_heading(languageCode, 'Selected packages'));
    final packages = _packages(bundle, state);
    if (packages.isEmpty) {
      buffer.writeln(_none(languageCode));
      buffer.writeln();
    } else {
      for (final name in packages) {
        buffer.writeln('- `$name`');
      }
      buffer.writeln();
    }

    buffer.writeln(_heading(languageCode, 'Package relationships'));
    _writeRelationships(buffer, bundle, state, languageCode);

    buffer.writeln(_heading(languageCode, 'Coding conventions'));
    for (final line in _conventions(bundle, state, languageCode)) {
      buffer.writeln('- $line');
    }
    buffer.writeln();

    buffer.writeln(_heading(languageCode, 'Constraints'));
    for (final line in _constraints(languageCode)) {
      buffer.writeln('- $line');
    }
    buffer.writeln();

    buffer.writeln(_heading(languageCode, 'Generated-code rules'));
    for (final line in _generatedCodeRules(bundle, state, languageCode)) {
      buffer.writeln('- $line');
    }
    buffer.writeln();

    buffer.writeln(_heading(languageCode, 'Validation commands'));
    buffer.writeln('```bash');
    for (final command in _commands(bundle, state)) {
      buffer.writeln(command);
    }
    buffer.writeln('```');
    buffer.writeln();

    buffer.writeln(_heading(languageCode, 'Agent-specific rules'));
    for (final line in _agentRules(languageCode)) {
      buffer.writeln('- $line');
    }
    buffer.writeln();
    return buffer.toString();
  }

  void _writeGroup(
    StringBuffer buffer,
    KnowledgeBundle bundle,
    DecisionEngine engine,
    ArchitectureState state,
    String groupId,
    String languageCode,
  ) {
    final group = bundle.flow.groups.firstWhere((item) => item.id == groupId);
    buffer.writeln('## ${group.title.resolve(languageCode)}');
    final visibleIds = {
      for (final decision in engine.visibleDecisions(state.answers))
        decision.id,
    };
    for (final decisionId in group.decisionIds) {
      if (!visibleIds.contains(decisionId) &&
          !state.answers.containsKey(decisionId)) {
        continue;
      }
      final decision = bundle.flow.decisionById(decisionId);
      final answer = state.answers[decisionId];
      if (answer == null) {
        buffer.writeln(
          '- ${decision.category.resolve(languageCode)}: ${_undecided(languageCode)}',
        );
        continue;
      }
      final selected = [
        for (final optionId in answer.optionIds)
          decision.options.firstWhere((item) => item.id == optionId),
      ];
      final names = [
        for (final option in selected)
          '**${option.name.resolve(languageCode)}**',
      ].join(', ');
      buffer.writeln('- ${decision.category.resolve(languageCode)}: $names');
      for (final option in selected) {
        buffer.writeln(
          '  - ${option.name.resolve(languageCode)}: ${option.reason.resolve(languageCode)}',
        );
        if (option.implies.isNotEmpty) {
          buffer.writeln(
            '    - ${_pairs(languageCode)}: ${option.implies.join(', ')}',
          );
        }
      }
    }
    buffer.writeln();
  }

  void _writeRelationships(
    StringBuffer buffer,
    KnowledgeBundle bundle,
    ArchitectureState state,
    String languageCode,
  ) {
    final selected = _selectedTechnologies(bundle, state);
    if (selected.isEmpty) {
      buffer.writeln(_none(languageCode));
      buffer.writeln();
      return;
    }
    for (final technology in selected) {
      final copy = technology.copy.resolve(languageCode);
      if (copy.worksWellWith.isEmpty) {
        continue;
      }
      buffer.writeln('- **${copy.name}**: ${copy.worksWellWith.join(', ')}');
    }
    buffer.writeln();
  }

  List<Technology> _selectedTechnologies(
    KnowledgeBundle bundle,
    ArchitectureState state,
  ) {
    final result = <Technology>[];
    final seen = <String>{};
    for (final answer in state.answers.values) {
      for (final optionId in answer.optionIds) {
        for (final decision in bundle.flow.decisions) {
          for (final option in decision.options) {
            if (option.id != optionId || seen.contains(option.technologyId)) {
              continue;
            }
            seen.add(option.technologyId);
            result.add(bundle.technologyById(option.technologyId));
          }
        }
      }
    }
    result.sort((a, b) => a.id.compareTo(b.id));
    return result;
  }

  List<String> _packages(KnowledgeBundle bundle, ArchitectureState state) {
    final names = <String>{};
    for (final technology in _selectedTechnologies(bundle, state)) {
      final packageName = technology.packageName;
      if (packageName != null) {
        names.add(packageName);
      }
      names.addAll(technology.impliedPackages);
    }
    final sorted = names.toList()..sort();
    return sorted;
  }

  List<String> _conventions(
    KnowledgeBundle bundle,
    ArchitectureState state,
    String languageCode,
  ) {
    final ids = _optionIds(state);
    final lines = <String>[];
    if (ids.contains('feature-first')) {
      lines.add(
        _pick(
          languageCode,
          'Keep new features in feature directories; do not leak feature UI into shared widgets without a reason.',
          '把新功能放在功能目录中；没有理由时，不要把功能 UI 漏进共享组件。',
          '新機能は機能ディレクトリに置き、理由なく共有ウィジェットへ漏らさない。',
        ),
      );
    }
    if (ids.contains('simple-layers')) {
      lines.add(
        _pick(
          languageCode,
          'Keep presentation, domain, and data responsibilities separate even inside a small lib/.',
          '即使在较小的 lib/ 内，也要分开 presentation、domain 与 data 的职责。',
          '小さな lib でも presentation / domain / data の責務を分ける。',
        ),
      );
    }
    if (ids.contains('clean')) {
      lines.add(
        _pick(
          languageCode,
          'Domain code must not import Flutter widgets or HTTP clients.',
          '领域代码不得导入 Flutter widget 或 HTTP 客户端。',
          'ドメインは Flutter Widget や HTTP クライアントを import しない。',
        ),
      );
    }
    if (ids.contains('riverpod')) {
      lines.add(
        _pick(
          languageCode,
          'Put application state in Riverpod notifiers; widgets render and forward events only.',
          '应用状态放在 Riverpod notifier 中；widget 只负责渲染和转发事件。',
          'アプリ状態は Riverpod notifier に置き、Widget は描画とイベント転送だけにする。',
        ),
      );
    }
    if (ids.contains('bloc')) {
      lines.add(
        _pick(
          languageCode,
          'Express intent as events and keep widgets free of business branching.',
          '用事件表达意图，不要在 widget 里写业务分支。',
          '意図はイベントで表し、Widget に業務分岐を書かない。',
        ),
      );
    }
    if (ids.contains('go-router-builder')) {
      lines.add(
        _pick(
          languageCode,
          'Navigate with generated typed routes; do not introduce handwritten route strings.',
          '用生成的类型化路由导航；不要再引入手写路由字符串。',
          '生成された型付きルートで遷移し、手書きの経路文字列を増やさない。',
        ),
      );
    }
    if (lines.isEmpty) {
      lines.add(
        _pick(
          languageCode,
          'Keep domain logic outside widgets.',
          '领域逻辑不要放在 widget 里。',
          'ドメインロジックを Widget に置かない。',
        ),
      );
    }
    return lines;
  }

  List<String> _constraints(String languageCode) {
    return [
      _pick(
        languageCode,
        'Do not present subjective library rankings as facts.',
        '不要把主观的库排名表述成事实。',
        '主観的なライブラリ順位を事実として書かない。',
      ),
      _pick(
        languageCode,
        'Do not add dependencies unless an existing selected package cannot solve the need.',
        '除非已选包无法解决问题，否则不要新增依赖。',
        '既に選んだパッケージで足りるなら依存を増やさない。',
      ),
      _pick(
        languageCode,
        'Do not introduce an LLM API, backend server, or secrets into this architecture unless requirements change.',
        '除非需求变化，否则不要在此架构中引入 LLM API、后端服务器或密钥。',
        '要件が変わらない限り、LLM API・バックエンド・秘密情報をこの設計に持ち込まない。',
      ),
    ];
  }

  List<String> _generatedCodeRules(
    KnowledgeBundle bundle,
    ArchitectureState state,
    String languageCode,
  ) {
    final commands = _commands(bundle, state);
    final usesCodegen = commands.any(
      (command) => command.contains('build_runner'),
    );
    if (!usesCodegen) {
      return [
        _pick(
          languageCode,
          'No code generation is required for the selected stack.',
          '所选技术栈不需要代码生成。',
          '選択した構成ではコード生成は不要。',
        ),
      ];
    }
    return [
      _pick(
        languageCode,
        'Never hand-edit `*.g.dart` or `*.freezed.dart`.',
        '不要手改 `*.g.dart` 或 `*.freezed.dart`。',
        '`*.g.dart` と `*.freezed.dart` は手で編集しない。',
      ),
      _pick(
        languageCode,
        'Run `dart run build_runner build --delete-conflicting-outputs` after changing annotated sources.',
        '修改带注解的源文件后，运行 `dart run build_runner build --delete-conflicting-outputs`。',
        'アノテーション源を変えたら `dart run build_runner build --delete-conflicting-outputs` を実行する。',
      ),
    ];
  }

  List<String> _commands(KnowledgeBundle bundle, ArchitectureState state) {
    final commands = <String>[];
    final packages = _packages(bundle, state);
    final codegen = packages.any((name) => _codegenPackages.contains(name));
    if (codegen) {
      commands.add('dart run build_runner build --delete-conflicting-outputs');
    }
    commands.add('flutter analyze');
    commands.add('flutter test');
    final ids = _optionIds(state);
    if (ids.contains('web')) {
      commands.add(
        'flutter build web --release --base-href "/flutter_agents_md_helper/"',
      );
    }
    return commands;
  }

  List<String> _agentRules(String languageCode) {
    return [
      _pick(
        languageCode,
        'New features must not break the chosen boundaries.',
        '新功能不得破坏已选边界。',
        '新しい機能は、選んだ構成の境界を壊さない。',
      ),
      _pick(
        languageCode,
        'Dependencies point inward from UI and infrastructure toward domain or feature code.',
        '依赖方向由外（UI / 基础设施）指向内（领域 / 功能）。',
        '依存の向きは内側（ドメイン / 機能）から外側（UI / インフラ）へ。',
      ),
      _pick(
        languageCode,
        'Do not hand-edit generated code.',
        '不要手改生成代码。',
        '生成コードは手で編集しない。',
      ),
    ];
  }

  Set<String> _optionIds(ArchitectureState state) {
    return {for (final answer in state.answers.values) ...answer.optionIds};
  }

  String _intro(String languageCode) {
    return _pick(
      languageCode,
      'This repository follows the Flutter architecture decided in Flutter Architect.',
      '本仓库的 Flutter 架构遵循 Flutter Architect 中的决定。',
      'このリポジトリの Flutter アーキテクチャは、Flutter Architect の決定に従います。',
    );
  }

  String _heading(String languageCode, String en) {
    const zh = {
      'Project characteristics': '项目特征',
      'Architecture decisions': '架构决定',
      'Selected packages': '所选软件包',
      'Package relationships': '软件包关系',
      'Coding conventions': '编码约定',
      'Constraints': '约束',
      'Generated-code rules': '生成代码规则',
      'Validation commands': '校验命令',
      'Agent-specific rules': '代理规则',
    };
    const ja = {
      'Project characteristics': 'プロジェクト特性',
      'Architecture decisions': 'アーキテクチャ決定',
      'Selected packages': '選択したパッケージ',
      'Package relationships': 'パッケージ関係',
      'Coding conventions': 'コーディング規約',
      'Constraints': '制約',
      'Generated-code rules': '生成コードの規則',
      'Validation commands': '検証コマンド',
      'Agent-specific rules': 'エージェント向けルール',
    };
    final title = switch (languageCode) {
      'zh' => zh[en] ?? en,
      'ja' => ja[en] ?? en,
      _ => en,
    };
    return '## $title';
  }

  String _line(String languageCode, String labelEn, String value) {
    final label = switch (languageCode) {
      'zh' => '知识库版本',
      'ja' => '知識ベース版',
      _ => labelEn,
    };
    return '$label: `$value`';
  }

  String _pairs(String languageCode) {
    return _pick(languageCode, 'Pairs with', '搭配', '併用');
  }

  String _undecided(String languageCode) {
    return _pick(languageCode, 'Undecided', '未决定', '未決定');
  }

  String _none(String languageCode) {
    return _pick(languageCode, '- None selected.', '- 尚未选择。', '- 未選択。');
  }

  String _pick(String languageCode, String en, String zh, String ja) {
    return switch (languageCode) {
      'zh' => zh,
      'ja' => ja,
      _ => en,
    };
  }

  static const _codegenPackages = {
    'riverpod_generator',
    'riverpod_annotation',
    'go_router_builder',
    'freezed',
    'freezed_annotation',
    'json_serializable',
    'json_annotation',
    'retrofit',
    'retrofit_generator',
    'drift',
    'drift_dev',
    'build_runner',
    'pigeon',
  };
}
