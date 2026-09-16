import 'package:flutter_agents_md_helper/features/wizard/data/knowledge_repository.dart';
import 'package:flutter_agents_md_helper/features/wizard/domain/decision_engine.dart';
import 'package:flutter_agents_md_helper/features/wizard/domain/wizard_navigation.dart';
import 'package:flutter_agents_md_helper/shared/models/architecture_selection.dart';
import 'package:flutter_agents_md_helper/shared/models/architecture_state.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers/file_knowledge_loader.dart';

void main() {
  late WizardNavigation nav;

  setUp(() async {
    final bundle = await KnowledgeRepository(const FileKnowledgeLoader())
        .load();
    nav = WizardNavigation(DecisionEngine(bundle));
  });

  test(
    'commit clears later answers and moves to the next visible decision',
    () {
      var state = const ArchitectureState(
        currentDecisionId: 'project-structure',
      );
      state = nav
          .commit(state, const ArchitectureSelection.single('multi-package'))
          .state;
      expect(state.answers['project-structure']?.singleId, 'multi-package');
      expect(state.currentDecisionId, 'workspace');

      state = nav
          .commit(state, const ArchitectureSelection.single('melos'))
          .state;
      expect(state.answers['workspace']?.singleId, 'melos');

      final afterChange = nav
          .commit(
            state.copyWith(currentDecisionId: 'project-structure'),
            const ArchitectureSelection.single('single-package'),
          )
          .state;
      expect(afterChange.answers.containsKey('workspace'), isFalse);
      expect(afterChange.currentDecisionId, isNot(equals('workspace')));
    },
  );

  test(
    'back returns to the previous visible decision without dropping answers',
    () {
      var state = const ArchitectureState(currentDecisionId: 'project-target');
      state = nav
          .commit(state, const ArchitectureSelection.single('mobile'))
          .state;
      final afterBack = nav.back(state);
      expect(afterBack.currentDecisionId, 'project-target');
      expect(afterBack.answers['project-target']?.singleId, 'mobile');
    },
  );
}
