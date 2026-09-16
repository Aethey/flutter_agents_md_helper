import 'package:freezed_annotation/freezed_annotation.dart';

import 'decision_condition.dart';
import 'localized_text.dart';

part 'decision.freezed.dart';
part 'decision.g.dart';

enum SelectionMode { single, multiple }

@freezed
abstract class DecisionOption with _$DecisionOption {
  const factory DecisionOption({
    required String id,
    required String technologyId,
    required LocalizedText name,
    required LocalizedText summary,
    required LocalizedStringList tags,
    required LocalizedText reason,
    @Default([]) List<String> implies,
    @DecisionConditionConverter() DecisionCondition? recommendWhen,
    LocalizedStringList? recommendBecause,
    @Default(false) bool fallbackRecommended,
    @DecisionConditionConverter() DecisionCondition? visibleWhen,
  }) = _DecisionOption;

  factory DecisionOption.fromJson(Map<String, dynamic> json) =>
      _$DecisionOptionFromJson(json);
}

@freezed
abstract class Decision with _$Decision {
  const factory Decision({
    required String id,
    required String groupId,
    required String icon,
    required SelectionMode selection,
    required LocalizedText crumb,
    required LocalizedText category,
    required LocalizedText question,
    required LocalizedText blurb,
    required List<DecisionOption> options,
    @DecisionConditionConverter() DecisionCondition? visibleWhen,
    LocalizedText? shownBecause,
  }) = _Decision;

  factory Decision.fromJson(Map<String, dynamic> json) =>
      _$DecisionFromJson(json);
}

@freezed
abstract class DecisionGroup with _$DecisionGroup {
  const factory DecisionGroup({
    required String id,
    required String icon,
    required LocalizedText title,
    required List<String> decisionIds,
  }) = _DecisionGroup;

  factory DecisionGroup.fromJson(Map<String, dynamic> json) =>
      _$DecisionGroupFromJson(json);
}

@freezed
abstract class DecisionFlow with _$DecisionFlow {
  const factory DecisionFlow({
    required String id,
    required String version,
    required List<DecisionGroup> groups,
    required List<Decision> decisions,
  }) = _DecisionFlow;

  const DecisionFlow._();

  factory DecisionFlow.fromJson(Map<String, dynamic> json) =>
      _$DecisionFlowFromJson(json);

  Decision decisionById(String id) {
    return decisions.firstWhere((decision) => decision.id == id);
  }
}
