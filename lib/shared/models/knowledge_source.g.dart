// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'knowledge_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KnowledgeSource _$KnowledgeSourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_KnowledgeSource', json, ($checkedConvert) {
      final val = _KnowledgeSource(
        title: $checkedConvert('title', (v) => v as String),
        url: $checkedConvert('url', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$KnowledgeSourceToJson(_KnowledgeSource instance) =>
    <String, dynamic>{'title': instance.title, 'url': instance.url};
