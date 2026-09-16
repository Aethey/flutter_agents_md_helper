import 'package:flutter_agents_md_helper/features/export/domain/architecture_markdown_generator.dart';
import 'package:flutter_agents_md_helper/features/wizard/data/knowledge_repository.dart';
import 'package:flutter_agents_md_helper/shared/models/architecture_selection.dart';
import 'package:flutter_agents_md_helper/shared/models/architecture_state.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers/file_knowledge_loader.dart';

void main() {
  test('same input yields the same markdown', () async {
    final bundle = await KnowledgeRepository(const FileKnowledgeLoader())
        .load();
    const state = ArchitectureState(
      answers: {
        'project-target': ArchitectureSelection.multiple(['mobile', 'web']),
        'project-scale': ArchitectureSelection.single('scale-medium'),
        'engineering-needs': ArchitectureSelection.multiple([
          'need-backend',
          'need-persistence',
        ]),
        'project-structure': ArchitectureSelection.single('multi-package'),
        'workspace': ArchitectureSelection.single('melos'),
        'architecture': ArchitectureSelection.single('feature-first'),
        'state': ArchitectureSelection.single('riverpod'),
        'routing': ArchitectureSelection.single('go-router'),
        'typed-routing': ArchitectureSelection.single('go-router-builder'),
        'networking': ArchitectureSelection.single('dio'),
        'api-client': ArchitectureSelection.single('retrofit'),
        'models': ArchitectureSelection.single('freezed'),
        'serialization': ArchitectureSelection.single('json-serializable'),
        'persistence': ArchitectureSelection.multiple([
          'shared-preferences',
          'drift',
        ]),
        'testing': ArchitectureSelection.multiple(['unit-widget']),
        'analysis': ArchitectureSelection.single('strict-analysis'),
      },
    );
    const generator = ArchitectureMarkdownGenerator();
    final first = generator.generate(
      bundle: bundle,
      state: state,
      languageCode: 'en',
    );
    final second = generator.generate(
      bundle: bundle,
      state: state,
      languageCode: 'en',
    );
    expect(first, second);
    expect(first, contains('# FLUTTER_ARCHITECTURE.md'));
    expect(first, contains('**Riverpod**'));
    expect(first, contains('Project target: **Mobile**, **Web**'));
    expect(first, contains('Persistence: **shared_preferences**, **Drift**'));
    expect(first, contains('`flutter_riverpod`'));
    expect(
      first,
      contains('dart run build_runner build --delete-conflicting-outputs'),
    );
    expect(first, contains('Never hand-edit'));
  });
}
