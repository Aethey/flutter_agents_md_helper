import 'package:flutter_agents_md_helper/features/wizard/data/knowledge_repository.dart';
import 'package:flutter_agents_md_helper/features/wizard/domain/decision_engine.dart';
import 'package:flutter_agents_md_helper/features/wizard/domain/wizard_navigation.dart';
import 'package:flutter_agents_md_helper/shared/models/architecture_state.dart';
import 'package:flutter_agents_md_helper/shared/models/technology.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers/file_knowledge_loader.dart';
import '../../helpers/recording_knowledge_loader.dart';

void main() {
  test('loads the index, flow, and only referenced technologies', () async {
    final bundle = await KnowledgeRepository(const FileKnowledgeLoader())
        .load();

    expect(bundle.index.version, isNotEmpty);
    expect(bundle.flow.decisions, isNotEmpty);
    expect(bundle.technologies, isNotEmpty);

    final referenced = {
      for (final decision in bundle.flow.decisions)
        for (final option in decision.options) option.technologyId,
    };
    expect(bundle.technologies.keys.toSet(), referenced);

    for (final technology in bundle.technologies.values) {
      expect(technology.copy.en.name, isNotEmpty);
      expect(technology.kind, isA<TechnologyKind>());
    }
  });

  test('loadCatalog reads only the index and flow', () async {
    final recording = RecordingKnowledgeLoader(const FileKnowledgeLoader());
    final catalog = await KnowledgeRepository(recording).loadCatalog();

    expect(catalog.technologies, isEmpty);
    expect(recording.paths, [
      'knowledge/index.json',
      'knowledge/${catalog.index.flow}',
    ]);
  });

  test('ensureTechnologies loads only the requested files once', () async {
    final recording = RecordingKnowledgeLoader(const FileKnowledgeLoader());
    final repository = KnowledgeRepository(recording);
    final catalog = await repository.loadCatalog();
    final first = WizardNavigation(DecisionEngine(catalog))
        .requiredTechnologyIds(const ArchitectureState());

    final scoped = await repository.ensureTechnologies(catalog, first);

    expect(scoped.technologies.keys.toSet(), first);
    expect(
      recording.paths
          .where(
            (path) =>
                path != 'knowledge/index.json' &&
                path != 'knowledge/${catalog.index.flow}',
          )
          .toList(),
      hasLength(first.length),
    );

    await repository.ensureTechnologies(catalog, first);
    expect(
      recording.paths
          .where(
            (path) =>
                path != 'knowledge/index.json' &&
                path != 'knowledge/${catalog.index.flow}',
          )
          .toList(),
      hasLength(first.length),
    );
  });

  test('a failed technology request can be retried', () async {
    final loader = _FailOnceKnowledgeLoader(
      const FileKnowledgeLoader(),
      'knowledge/requirements/mobile.json',
    );
    final repository = KnowledgeRepository(loader);
    final catalog = await repository.loadCatalog();

    await expectLater(
      repository.ensureTechnologies(catalog, const ['mobile']),
      throwsA(isA<StateError>()),
    );
    final recovered = await repository.ensureTechnologies(catalog, const [
      'mobile',
    ]);

    expect(recovered.technologies, contains('mobile'));
    expect(loader.attempts, 2);
  });
}

class _FailOnceKnowledgeLoader implements KnowledgeLoader {
  _FailOnceKnowledgeLoader(this.inner, this.path);

  final KnowledgeLoader inner;
  final String path;
  int attempts = 0;

  @override
  Future<String> loadString(String assetPath) {
    if (assetPath == path) {
      attempts += 1;
      if (attempts == 1) {
        throw StateError('Temporary asset failure');
      }
    }
    return inner.loadString(assetPath);
  }
}
