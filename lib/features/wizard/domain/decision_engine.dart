import '../../../shared/models/architecture_selection.dart';
import '../../../shared/models/decision.dart';
import '../../../shared/models/knowledge_bundle.dart';
import '../../../shared/models/technology.dart';
import '../../../shared/utilities/decision_condition_evaluator.dart';

class RankedOption {
  const RankedOption({
    required this.option,
    required this.technology,
    required this.shownBecause,
  });

  final DecisionOption option;
  final Technology technology;
  final String? shownBecause;
}

class DecisionEngine {
  DecisionEngine(
    this.bundle, {
    this.evaluator = const DecisionConditionEvaluator(),
  });

  final KnowledgeBundle bundle;
  final DecisionConditionEvaluator evaluator;

  List<Decision> visibleDecisions(Map<String, ArchitectureSelection> answers) {
    return [
      for (final decision in bundle.flow.decisions)
        if (evaluator.evaluate(decision.visibleWhen, answers)) decision,
    ];
  }

  List<DecisionOption> visibleOptions(
    Decision decision,
    Map<String, ArchitectureSelection> answers,
  ) {
    return [
      for (final option in decision.options)
        if (evaluator.evaluate(option.visibleWhen, answers)) option,
    ];
  }

  List<RankedOption> rank({
    required Decision decision,
    required Map<String, ArchitectureSelection> answers,
    required String languageCode,
  }) {
    return [
      for (final option in visibleOptions(decision, answers))
        RankedOption(
          option: option,
          technology: bundle.technologyById(option.technologyId),
          shownBecause: decision.shownBecause?.resolve(languageCode),
        ),
    ];
  }

  Decision? decisionById(String id) {
    for (final decision in bundle.flow.decisions) {
      if (decision.id == id) {
        return decision;
      }
    }
    return null;
  }
}
