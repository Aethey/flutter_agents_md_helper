// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localized_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LocalizedText _$LocalizedTextFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_LocalizedText', json, ($checkedConvert) {
      final val = _LocalizedText(
        en: $checkedConvert('en', (v) => v as String),
        zh: $checkedConvert('zh', (v) => v as String),
        ja: $checkedConvert('ja', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$LocalizedTextToJson(_LocalizedText instance) =>
    <String, dynamic>{'en': instance.en, 'zh': instance.zh, 'ja': instance.ja};

_LocalizedStringList _$LocalizedStringListFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_LocalizedStringList', json, ($checkedConvert) {
      final val = _LocalizedStringList(
        en: $checkedConvert(
          'en',
          (v) => (v as List<dynamic>).map((e) => e as String).toList(),
        ),
        zh: $checkedConvert(
          'zh',
          (v) => (v as List<dynamic>).map((e) => e as String).toList(),
        ),
        ja: $checkedConvert(
          'ja',
          (v) => (v as List<dynamic>).map((e) => e as String).toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$LocalizedStringListToJson(
  _LocalizedStringList instance,
) => <String, dynamic>{'en': instance.en, 'zh': instance.zh, 'ja': instance.ja};
