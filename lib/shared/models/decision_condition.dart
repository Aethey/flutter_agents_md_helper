import 'package:freezed_annotation/freezed_annotation.dart';

part 'decision_condition.freezed.dart';

@freezed
sealed class DecisionCondition with _$DecisionCondition {
  const DecisionCondition._();

  const factory DecisionCondition.all(List<DecisionCondition> conditions) =
      DecisionConditionAll;

  const factory DecisionCondition.any(List<DecisionCondition> conditions) =
      DecisionConditionAny;

  const factory DecisionCondition.not(DecisionCondition condition) =
      DecisionConditionNot;

  const factory DecisionCondition.equals({
    required String decision,
    required String value,
  }) = DecisionConditionEquals;

  const factory DecisionCondition.isIn({
    required String decision,
    required List<String> values,
  }) = DecisionConditionIn;

  const factory DecisionCondition.contains({
    required String decision,
    required String value,
  }) = DecisionConditionContains;

  factory DecisionCondition.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('all')) {
      return DecisionCondition.all(_parseList(json['all']));
    }
    if (json.containsKey('any')) {
      return DecisionCondition.any(_parseList(json['any']));
    }
    if (json.containsKey('not')) {
      return DecisionCondition.not(
        DecisionCondition.fromJson(_asMap(json['not'])),
      );
    }
    final decision = json['decision'] as String?;
    if (decision == null) {
      throw FormatException('Condition is missing decision: $json');
    }
    if (json.containsKey('equals')) {
      return DecisionCondition.equals(
        decision: decision,
        value: json['equals'] as String,
      );
    }
    if (json.containsKey('in')) {
      return DecisionCondition.isIn(
        decision: decision,
        values: (json['in'] as List<dynamic>).cast<String>(),
      );
    }
    if (json.containsKey('contains')) {
      return DecisionCondition.contains(
        decision: decision,
        value: json['contains'] as String,
      );
    }
    throw FormatException('Unknown condition: $json');
  }

  Map<String, dynamic> toJson() {
    return switch (this) {
      DecisionConditionAll(:final conditions) => {
        'all': [for (final condition in conditions) condition.toJson()],
      },
      DecisionConditionAny(:final conditions) => {
        'any': [for (final condition in conditions) condition.toJson()],
      },
      DecisionConditionNot(:final condition) => {'not': condition.toJson()},
      DecisionConditionEquals(:final decision, :final value) => {
        'decision': decision,
        'equals': value,
      },
      DecisionConditionIn(:final decision, :final values) => {
        'decision': decision,
        'in': values,
      },
      DecisionConditionContains(:final decision, :final value) => {
        'decision': decision,
        'contains': value,
      },
    };
  }

  static List<DecisionCondition> _parseList(Object? raw) {
    return (raw as List<dynamic>)
        .map((entry) => DecisionCondition.fromJson(_asMap(entry)))
        .toList();
  }

  static Map<String, dynamic> _asMap(Object? raw) {
    return Map<String, dynamic>.from(raw! as Map);
  }
}

class DecisionConditionConverter
    implements JsonConverter<DecisionCondition?, Map<String, dynamic>?> {
  const DecisionConditionConverter();

  @override
  DecisionCondition? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return DecisionCondition.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(DecisionCondition? object) => object?.toJson();
}
