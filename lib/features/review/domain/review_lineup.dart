import '../../../shared/models/architecture_state.dart';
import '../../../shared/models/knowledge_bundle.dart';
import '../../wizard/domain/decision_engine.dart';

class ReviewRow {
  const ReviewRow({
    required this.decisionId,
    required this.groupId,
    required this.groupTitle,
    required this.category,
    required this.icon,
    required this.names,
    required this.detail,
    required this.pending,
  });

  final String decisionId;
  final String groupId;
  final String groupTitle;
  final String category;
  final String icon;
  final List<String> names;
  final String? detail;
  final bool pending;

  String get headline => names.join(', ');
}

class ReviewLineup {
  const ReviewLineup({required this.rows});

  final List<ReviewRow> rows;

  factory ReviewLineup.from({
    required KnowledgeBundle bundle,
    required ArchitectureState state,
    required String languageCode,
    required String pendingLabel,
  }) {
    final engine = DecisionEngine(bundle);
    final visibleIds = {
      for (final decision in engine.visibleDecisions(state.answers))
        decision.id,
    };
    return ReviewLineup(
      rows: [
        for (final group in bundle.flow.groups)
          for (final id in group.decisionIds)
            if (visibleIds.contains(id) || state.answers.containsKey(id))
              _row(
                bundle: bundle,
                state: state,
                languageCode: languageCode,
                pendingLabel: pendingLabel,
                groupId: group.id,
                groupTitle: group.title.resolve(languageCode),
                icon: group.icon,
                decisionId: id,
              ),
      ],
    );
  }

  static ReviewRow _row({
    required KnowledgeBundle bundle,
    required ArchitectureState state,
    required String languageCode,
    required String pendingLabel,
    required String groupId,
    required String groupTitle,
    required String icon,
    required String decisionId,
  }) {
    final decision = bundle.flow.decisionById(decisionId);
    final answer = state.answers[decisionId];
    if (answer == null) {
      return ReviewRow(
        decisionId: decisionId,
        groupId: groupId,
        groupTitle: groupTitle,
        category: decision.category.resolve(languageCode),
        icon: icon,
        names: [pendingLabel],
        detail: null,
        pending: true,
      );
    }
    final names = <String>[];
    String? detail;
    for (final optionId in answer.optionIds) {
      for (final option in decision.options) {
        if (option.id != optionId) {
          continue;
        }
        names.add(option.name.resolve(languageCode));
        detail ??= option.reason.resolve(languageCode);
        break;
      }
    }
    return ReviewRow(
      decisionId: decisionId,
      groupId: groupId,
      groupTitle: groupTitle,
      category: decision.category.resolve(languageCode),
      icon: icon,
      names: names.isEmpty ? [pendingLabel] : names,
      detail: detail,
      pending: names.isEmpty,
    );
  }
}
