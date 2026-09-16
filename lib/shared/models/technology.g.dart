// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'technology.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TechnologyCopy _$TechnologyCopyFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_TechnologyCopy', json, ($checkedConvert) {
      final val = _TechnologyCopy(
        label: $checkedConvert('label', (v) => v as String),
        name: $checkedConvert('name', (v) => v as String),
        summary: $checkedConvert('summary', (v) => v as String),
        description: $checkedConvert('description', (v) => v as String),
        advantages: $checkedConvert(
          'advantages',
          (v) => (v as List<dynamic>).map((e) => e as String).toList(),
        ),
        tradeOffs: $checkedConvert(
          'tradeOffs',
          (v) => (v as List<dynamic>).map((e) => e as String).toList(),
        ),
        recommendedWhen: $checkedConvert(
          'recommendedWhen',
          (v) => (v as List<dynamic>).map((e) => e as String).toList(),
        ),
        avoidWhen: $checkedConvert(
          'avoidWhen',
          (v) => (v as List<dynamic>).map((e) => e as String).toList(),
        ),
        worksWellWith: $checkedConvert(
          'worksWellWith',
          (v) => (v as List<dynamic>).map((e) => e as String).toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$TechnologyCopyToJson(_TechnologyCopy instance) =>
    <String, dynamic>{
      'label': instance.label,
      'name': instance.name,
      'summary': instance.summary,
      'description': instance.description,
      'advantages': instance.advantages,
      'tradeOffs': instance.tradeOffs,
      'recommendedWhen': instance.recommendedWhen,
      'avoidWhen': instance.avoidWhen,
      'worksWellWith': instance.worksWellWith,
    };

_LocalizedTechnologyCopy _$LocalizedTechnologyCopyFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_LocalizedTechnologyCopy', json, ($checkedConvert) {
  final val = _LocalizedTechnologyCopy(
    en: $checkedConvert(
      'en',
      (v) => TechnologyCopy.fromJson(v as Map<String, dynamic>),
    ),
    zh: $checkedConvert(
      'zh',
      (v) => TechnologyCopy.fromJson(v as Map<String, dynamic>),
    ),
    ja: $checkedConvert(
      'ja',
      (v) => TechnologyCopy.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$LocalizedTechnologyCopyToJson(
  _LocalizedTechnologyCopy instance,
) => <String, dynamic>{
  'en': instance.en.toJson(),
  'zh': instance.zh.toJson(),
  'ja': instance.ja.toJson(),
};

_Technology _$TechnologyFromJson(Map<String, dynamic> json) => $checkedCreate(
  '_Technology',
  json,
  ($checkedConvert) {
    final val = _Technology(
      id: $checkedConvert('id', (v) => v as String),
      category: $checkedConvert('category', (v) => v as String),
      kind: $checkedConvert(
        'kind',
        (v) => $enumDecode(_$TechnologyKindEnumMap, v),
      ),
      packageName: $checkedConvert('packageName', (v) => v as String?),
      impliedPackages: $checkedConvert(
        'impliedPackages',
        (v) =>
            (v as List<dynamic>?)?.map((e) => e as String).toList() ?? const [],
      ),
      docsUrl: $checkedConvert('docsUrl', (v) => v as String),
      verifiedAt: $checkedConvert('verifiedAt', (v) => v as String),
      sources: $checkedConvert(
        'sources',
        (v) => (v as List<dynamic>)
            .map((e) => KnowledgeSource.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      facts: $checkedConvert(
        'facts',
        (v) => (v as List<dynamic>).map((e) => e as String).toList(),
      ),
      copy: $checkedConvert(
        'copy',
        (v) => LocalizedTechnologyCopy.fromJson(v as Map<String, dynamic>),
      ),
    );
    return val;
  },
);

Map<String, dynamic> _$TechnologyToJson(_Technology instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'kind': _$TechnologyKindEnumMap[instance.kind]!,
      'packageName': instance.packageName,
      'impliedPackages': instance.impliedPackages,
      'docsUrl': instance.docsUrl,
      'verifiedAt': instance.verifiedAt,
      'sources': instance.sources.map((e) => e.toJson()).toList(),
      'facts': instance.facts,
      'copy': instance.copy.toJson(),
    };

const _$TechnologyKindEnumMap = {
  TechnologyKind.requirement: 'requirement',
  TechnologyKind.package: 'package',
  TechnologyKind.pattern: 'pattern',
};
