import 'package:flutter_agents_md_helper/features/review/domain/review_lineup.dart';
import 'package:flutter_agents_md_helper/features/wizard/data/knowledge_repository.dart';
import 'package:flutter_agents_md_helper/shared/models/architecture_selection.dart';
import 'package:flutter_agents_md_helper/shared/models/architecture_state.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers/file_knowledge_loader.dart';

void main() {
  test('review lineup lists visible decisions in flow order', () async {
    final bundle = await KnowledgeRepository(const FileKnowledgeLoader())
        .load();
    final lineup = ReviewLineup.from(
      bundle: bundle,
      languageCode: 'en',
      pendingLabel: 'Undecided',
      state: const ArchitectureState(
        answers: {
          'project-target': ArchitectureSelection.multiple(['mobile', 'web']),
          'project-scale': ArchitectureSelection.single('scale-medium'),
          'architecture': ArchitectureSelection.single('feature-first'),
          'state': ArchitectureSelection.single('riverpod'),
          'routing': ArchitectureSelection.single('go-router'),
        },
      ),
    );

    expect(
      lineup.rows.map((row) => row.decisionId),
      containsAll([
        'project-target',
        'project-scale',
        'architecture',
        'state',
        'routing',
      ]),
    );
    expect(
      lineup.rows.firstWhere((row) => row.decisionId == 'project-target').names,
      ['Mobile', 'Web'],
    );
    expect(
      lineup.rows
          .firstWhere((row) => row.decisionId == 'architecture')
          .headline,
      'Feature-first',
    );
    expect(
      lineup.rows.firstWhere((row) => row.decisionId == 'state').headline,
      'Riverpod',
    );
  });
}
