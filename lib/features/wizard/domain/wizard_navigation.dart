import '../../../shared/models/architecture_selection.dart';
import '../../../shared/models/architecture_state.dart';
import '../../../shared/models/decision.dart';
import 'decision_engine.dart';

class WizardNavigation {
  const WizardNavigation(this.engine);

  final DecisionEngine engine;

  List<Decision> visible(ArchitectureState state) {
    return engine.visibleDecisions(state.answers);
  }

  Decision currentDecision(ArchitectureState state) {
    final decisions = visible(state);
    if (decisions.isEmpty) {
      throw StateError('The decision flow has no visible steps');
    }
    final id = state.currentDecisionId;
    for (final decision in decisions) {
      if (decision.id == id) {
        return decision;
      }
    }
    return decisions.first;
  }

  int currentIndex(ArchitectureState state) {
    final decisions = visible(state);
    final current = currentDecision(state);
    return decisions.indexWhere((decision) => decision.id == current.id);
  }

  bool get canOpenReview => true;

  bool isFirst(ArchitectureState state) => currentIndex(state) <= 0;

  bool isLast(ArchitectureState state) {
    return currentIndex(state) >= visible(state).length - 1;
  }

  ArchitectureState withCurrentRestored(ArchitectureState state) {
    final decision = currentDecision(state);
    final answer = state.answers[decision.id];
    return state.copyWith(
      currentDecisionId: decision.id,
      selectedOptionId: answer?.optionIds.lastOrNull,
      selectedOptionIds: answer?.optionIds ?? const [],
      previewedOptionId: answer?.optionIds.lastOrNull,
    );
  }

  ({ArchitectureState state, bool openReview}) commit(
    ArchitectureState state,
    ArchitectureSelection selection,
  ) {
    final current = currentDecision(state);
    final answers = _replaceFrom(state.answers, current.id, selection);
    return _advance(state.copyWith(answers: answers), fromId: current.id);
  }

  ({ArchitectureState state, bool openReview}) skip(ArchitectureState state) {
    final current = currentDecision(state);
    return _advance(state, fromId: current.id);
  }

  ArchitectureState back(ArchitectureState state) {
    final decisions = visible(state);
    final index = currentIndex(state);
    if (index <= 0) {
      return withCurrentRestored(state);
    }
    return withCurrentRestored(
      state.copyWith(currentDecisionId: decisions[index - 1].id),
    );
  }

  ArchitectureState jumpTo(ArchitectureState state, String decisionId) {
    return withCurrentRestored(state.copyWith(currentDecisionId: decisionId));
  }

  ArchitectureState preview(ArchitectureState state, String optionId) {
    return state.copyWith(previewedOptionId: optionId);
  }

  ArchitectureState select(
    ArchitectureState state,
    Decision decision,
    String optionId,
  ) {
    if (decision.selection == SelectionMode.multiple) {
      final next = [...state.selectedOptionIds];
      if (next.contains(optionId)) {
        next.remove(optionId);
      } else {
        next.add(optionId);
      }
      return state.copyWith(
        selectedOptionIds: next,
        previewedOptionId: optionId,
        selectedOptionId: optionId,
      );
    }
    return state.copyWith(
      selectedOptionId: optionId,
      selectedOptionIds: [optionId],
      previewedOptionId: optionId,
    );
  }

  ArchitectureState reset() => const ArchitectureState();

  ({ArchitectureState state, bool openReview}) _advance(
    ArchitectureState state, {
    required String fromId,
  }) {
    final decisions = engine.visibleDecisions(state.answers);
    final index = decisions.indexWhere((decision) => decision.id == fromId);
    if (index < 0 || index >= decisions.length - 1) {
      return (
        state: withCurrentRestored(
          state.copyWith(
            currentDecisionId: decisions.isEmpty ? fromId : decisions.last.id,
          ),
        ),
        openReview: true,
      );
    }
    return (
      state: withCurrentRestored(
        state.copyWith(currentDecisionId: decisions[index + 1].id),
      ),
      openReview: false,
    );
  }

  Map<String, ArchitectureSelection> _replaceFrom(
    Map<String, ArchitectureSelection> answers,
    String decisionId,
    ArchitectureSelection selection,
  ) {
    final ids = [
      for (final decision in engine.bundle.flow.decisions) decision.id,
    ];
    final start = ids.indexOf(decisionId);
    final next = Map<String, ArchitectureSelection>.of(answers);
    if (start >= 0) {
      for (final id in ids.skip(start)) {
        next.remove(id);
      }
    }
    next[decisionId] = selection;
    return next;
  }
}
