import 'dart:convert';

import '../../../shared/models/architecture_selection.dart';
import '../../../shared/models/decision.dart';
import '../../../shared/models/knowledge_bundle.dart';
import '../../../shared/models/knowledge_index.dart';
import '../../../shared/models/technology.dart';

abstract class KnowledgeLoader {
  Future<String> loadString(String assetPath);
}

class KnowledgeRepository {
  KnowledgeRepository(this._loader);

  final KnowledgeLoader _loader;

  Future<KnowledgeBundle> load() async {
    final index = KnowledgeIndex.fromJson(
      jsonDecode(await _loader.loadString('knowledge/index.json'))
          as Map<String, dynamic>,
    );
    final flow = DecisionFlow.fromJson(
      jsonDecode(await _loader.loadString('knowledge/${index.flow}'))
          as Map<String, dynamic>,
    );
    final technologyIds = <String>{
      for (final decision in flow.decisions)
        for (final option in decision.options) option.technologyId,
    };
    final technologies = <String, Technology>{};
    for (final id in technologyIds) {
      final path = index.fileFor(id);
      final technology = Technology.fromJson(
        jsonDecode(await _loader.loadString(path)) as Map<String, dynamic>,
      );
      technologies[id] = technology;
    }
    return KnowledgeBundle(
      index: index,
      flow: flow,
      technologies: technologies,
    );
  }
}

abstract class SessionStore {
  Future<PersistedSession?> load();

  Future<void> save(PersistedSession session);
}

class PersistedSession {
  const PersistedSession({
    required this.answers,
    this.currentDecisionId,
    required this.languageCode,
    required this.isDark,
  });

  final Map<String, ArchitectureSelection> answers;
  final String? currentDecisionId;
  final String languageCode;
  final bool isDark;

  Map<String, Object?> toJson() {
    return {
      'answers': {
        for (final entry in answers.entries)
          entry.key: switch (entry.value) {
            SingleSelection(:final optionId) => optionId,
            MultipleSelection(:final optionIds) => optionIds,
          },
      },
      'currentDecisionId': currentDecisionId,
      'languageCode': languageCode,
      'isDark': isDark,
    };
  }

  static PersistedSession fromJson(Map<String, dynamic> json) {
    final rawAnswers = json['answers'] as Map<String, dynamic>? ?? {};
    final answers = <String, ArchitectureSelection>{
      for (final entry in rawAnswers.entries)
        entry.key: _selectionFromJson(entry.value),
    };
    return PersistedSession(
      answers: answers,
      currentDecisionId: json['currentDecisionId'] as String?,
      languageCode: json['languageCode'] as String? ?? 'en',
      isDark: json['isDark'] as bool? ?? true,
    );
  }

  static ArchitectureSelection _selectionFromJson(Object? raw) {
    if (raw is String) {
      return ArchitectureSelection.single(raw);
    }
    if (raw is List<dynamic>) {
      return ArchitectureSelection.multiple(raw.cast<String>());
    }
    throw FormatException('Unsupported answer value: $raw');
  }
}

class MemorySessionStore implements SessionStore {
  PersistedSession? _session;

  @override
  Future<PersistedSession?> load() async => _session;

  @override
  Future<void> save(PersistedSession session) async {
    _session = session;
  }
}
