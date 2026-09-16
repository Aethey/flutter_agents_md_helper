import 'package:flutter_agents_md_helper/features/wizard/data/knowledge_repository.dart';
import 'package:flutter_agents_md_helper/features/wizard/domain/decision_engine.dart';
import 'package:flutter_agents_md_helper/shared/models/architecture_selection.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers/file_knowledge_loader.dart';

void main() {
  late DecisionEngine engine;

  setUp(() async {
    final bundle = await KnowledgeRepository(const FileKnowledgeLoader())
        .load();
    engine = DecisionEngine(bundle);
  });

  test('hides workspace until multi-package is chosen', () {
    final without = engine.visibleDecisions({
      'project-structure': const ArchitectureSelection.single('single-package'),
    });
    expect(without.any((decision) => decision.id == 'workspace'), isFalse);

    final withMulti = engine.visibleDecisions({
      'project-structure': const ArchitectureSelection.single('multi-package'),
    });
    expect(withMulti.any((decision) => decision.id == 'workspace'), isTrue);
  });

  test('hides networking until backend is selected', () {
    final hidden = engine.visibleDecisions(const {});
    expect(hidden.any((decision) => decision.id == 'networking'), isFalse);

    final shown = engine.visibleDecisions({
      'engineering-needs': const ArchitectureSelection.multiple([
        'need-backend',
      ]),
    });
    expect(shown.any((decision) => decision.id == 'networking'), isTrue);
  });

  test('hides localization until it is an engineering need', () {
    final hidden = engine.visibleDecisions(const {});
    expect(hidden.any((decision) => decision.id == 'localization'), isFalse);

    final shown = engine.visibleDecisions({
      'engineering-needs': const ArchitectureSelection.multiple([
        'need-localization',
      ]),
    });
    expect(shown.any((decision) => decision.id == 'localization'), isTrue);
  });

  test('lists visible options without recommending one', () {
    final decision = engine.bundle.flow.decisionById('state');
    final ranked = engine.rank(
      decision: decision,
      answers: {
        'project-scale': const ArchitectureSelection.single('scale-medium'),
      },
      languageCode: 'en',
    );
    expect(ranked.map((item) => item.option.id), contains('riverpod'));
    expect(ranked.length, greaterThan(1));
  });

  test('keeps go_router visible when the target includes web', () {
    final decision = engine.bundle.flow.decisionById('routing');
    final ranked = engine.rank(
      decision: decision,
      answers: {'project-target': const ArchitectureSelection.single('web')},
      languageCode: 'en',
    );
    expect(ranked.map((item) => item.option.id), contains('go-router'));
  });
}
