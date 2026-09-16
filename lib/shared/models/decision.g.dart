// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decision.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DecisionOption _$DecisionOptionFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_DecisionOption', json, ($checkedConvert) {
      final val = _DecisionOption(
        id: $checkedConvert('id', (v) => v as String),
        technologyId: $checkedConvert('technologyId', (v) => v as String),
        name: $checkedConvert(
          'name',
          (v) => LocalizedText.fromJson(v as Map<String, dynamic>),
        ),
        summary: $checkedConvert(
          'summary',
          (v) => LocalizedText.fromJson(v as Map<String, dynamic>),
        ),
        tags: $checkedConvert(
          'tags',
          (v) => LocalizedStringList.fromJson(v as Map<String, dynamic>),
        ),
        reason: $checkedConvert(
          'reason',
          (v) => LocalizedText.fromJson(v as Map<String, dynamic>),
        ),
        implies: $checkedConvert(
          'implies',
          (v) =>
              (v as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
        ),
        recommendWhen: $checkedConvert(
          'recommendWhen',
          (v) => const DecisionConditionConverter().fromJson(
            v as Map<String, dynamic>?,
          ),
        ),
        recommendBecause: $checkedConvert(
          'recommendBecause',
          (v) => v == null
              ? null
              : LocalizedStringList.fromJson(v as Map<String, dynamic>),
        ),
        fallbackRecommended: $checkedConvert(
          'fallbackRecommended',
          (v) => v as bool? ?? false,
        ),
        visibleWhen: $checkedConvert(
          'visibleWhen',
          (v) => const DecisionConditionConverter().fromJson(
            v as Map<String, dynamic>?,
          ),
        ),
      );
      return val;
    });

Map<String, dynamic> _$DecisionOptionToJson(_DecisionOption instance) =>
    <String, dynamic>{
      'id': instance.id,
      'technologyId': instance.technologyId,
      'name': instance.name.toJson(),
      'summary': instance.summary.toJson(),
      'tags': instance.tags.toJson(),
      'reason': instance.reason.toJson(),
      'implies': instance.implies,
      'recommendWhen': const DecisionConditionConverter().toJson(
        instance.recommendWhen,
      ),
      'recommendBecause': instance.recommendBecause?.toJson(),
      'fallbackRecommended': instance.fallbackRecommended,
      'visibleWhen': const DecisionConditionConverter().toJson(
        instance.visibleWhen,
      ),
    };

_Decision _$DecisionFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_Decision', json, ($checkedConvert) {
      final val = _Decision(
        id: $checkedConvert('id', (v) => v as String),
        groupId: $checkedConvert('groupId', (v) => v as String),
        icon: $checkedConvert('icon', (v) => v as String),
        selection: $checkedConvert(
          'selection',
          (v) => $enumDecode(_$SelectionModeEnumMap, v),
        ),
        crumb: $checkedConvert(
          'crumb',
          (v) => LocalizedText.fromJson(v as Map<String, dynamic>),
        ),
        category: $checkedConvert(
          'category',
          (v) => LocalizedText.fromJson(v as Map<String, dynamic>),
        ),
        question: $checkedConvert(
          'question',
          (v) => LocalizedText.fromJson(v as Map<String, dynamic>),
        ),
        blurb: $checkedConvert(
          'blurb',
          (v) => LocalizedText.fromJson(v as Map<String, dynamic>),
        ),
        options: $checkedConvert(
          'options',
          (v) => (v as List<dynamic>)
              .map((e) => DecisionOption.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        visibleWhen: $checkedConvert(
          'visibleWhen',
          (v) => const DecisionConditionConverter().fromJson(
            v as Map<String, dynamic>?,
          ),
        ),
        shownBecause: $checkedConvert(
          'shownBecause',
          (v) => v == null
              ? null
              : LocalizedText.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$DecisionToJson(_Decision instance) => <String, dynamic>{
  'id': instance.id,
  'groupId': instance.groupId,
  'icon': instance.icon,
  'selection': _$SelectionModeEnumMap[instance.selection]!,
  'crumb': instance.crumb.toJson(),
  'category': instance.category.toJson(),
  'question': instance.question.toJson(),
  'blurb': instance.blurb.toJson(),
  'options': instance.options.map((e) => e.toJson()).toList(),
  'visibleWhen': const DecisionConditionConverter().toJson(
    instance.visibleWhen,
  ),
  'shownBecause': instance.shownBecause?.toJson(),
};

const _$SelectionModeEnumMap = {
  SelectionMode.single: 'single',
  SelectionMode.multiple: 'multiple',
};

_DecisionGroup _$DecisionGroupFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_DecisionGroup', json, ($checkedConvert) {
      final val = _DecisionGroup(
        id: $checkedConvert('id', (v) => v as String),
        icon: $checkedConvert('icon', (v) => v as String),
        title: $checkedConvert(
          'title',
          (v) => LocalizedText.fromJson(v as Map<String, dynamic>),
        ),
        decisionIds: $checkedConvert(
          'decisionIds',
          (v) => (v as List<dynamic>).map((e) => e as String).toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$DecisionGroupToJson(_DecisionGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'icon': instance.icon,
      'title': instance.title.toJson(),
      'decisionIds': instance.decisionIds,
    };

_DecisionFlow _$DecisionFlowFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_DecisionFlow', json, ($checkedConvert) {
      final val = _DecisionFlow(
        id: $checkedConvert('id', (v) => v as String),
        version: $checkedConvert('version', (v) => v as String),
        groups: $checkedConvert(
          'groups',
          (v) => (v as List<dynamic>)
              .map((e) => DecisionGroup.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        decisions: $checkedConvert(
          'decisions',
          (v) => (v as List<dynamic>)
              .map((e) => Decision.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$DecisionFlowToJson(_DecisionFlow instance) =>
    <String, dynamic>{
      'id': instance.id,
      'version': instance.version,
      'groups': instance.groups.map((e) => e.toJson()).toList(),
      'decisions': instance.decisions.map((e) => e.toJson()).toList(),
    };
