import '../../shared/models/architecture_selection.dart';
import '../../shared/models/decision_condition.dart';

class DecisionConditionEvaluator {
  const DecisionConditionEvaluator();

  bool evaluate(
    DecisionCondition? condition,
    Map<String, ArchitectureSelection> answers,
  ) {
    if (condition == null) {
      return true;
    }
    return switch (condition) {
      DecisionConditionAll(:final conditions) => conditions.every(
        (item) => evaluate(item, answers),
      ),
      DecisionConditionAny(:final conditions) => conditions.any(
        (item) => evaluate(item, answers),
      ),
      DecisionConditionNot(:final condition) => !evaluate(condition, answers),
      DecisionConditionEquals(:final decision, :final value) =>
        answers[decision]?.contains(value) ?? false,
      DecisionConditionIn(:final decision, :final values) => values.any(
        (value) => answers[decision]?.contains(value) ?? false,
      ),
      DecisionConditionContains(:final decision, :final value) =>
        answers[decision]?.contains(value) ?? false,
    };
  }
}
