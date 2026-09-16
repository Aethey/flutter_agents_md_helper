// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'knowledge_index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KnowledgeIndexEntry _$KnowledgeIndexEntryFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_KnowledgeIndexEntry', json, ($checkedConvert) {
      final val = _KnowledgeIndexEntry(
        id: $checkedConvert('id', (v) => v as String),
        file: $checkedConvert('file', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$KnowledgeIndexEntryToJson(
  _KnowledgeIndexEntry instance,
) => <String, dynamic>{'id': instance.id, 'file': instance.file};

_KnowledgeCategory _$KnowledgeCategoryFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_KnowledgeCategory', json, ($checkedConvert) {
      final val = _KnowledgeCategory(
        path: $checkedConvert('path', (v) => v as String),
        entries: $checkedConvert(
          'entries',
          (v) => (v as List<dynamic>)
              .map(
                (e) => KnowledgeIndexEntry.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$KnowledgeCategoryToJson(_KnowledgeCategory instance) =>
    <String, dynamic>{
      'path': instance.path,
      'entries': instance.entries.map((e) => e.toJson()).toList(),
    };

_KnowledgeIndex _$KnowledgeIndexFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_KnowledgeIndex', json, ($checkedConvert) {
      final val = _KnowledgeIndex(
        version: $checkedConvert('version', (v) => v as String),
        updatedAt: $checkedConvert('updatedAt', (v) => v as String),
        flow: $checkedConvert('flow', (v) => v as String),
        categories: $checkedConvert(
          'categories',
          (v) => (v as Map<String, dynamic>).map(
            (k, e) => MapEntry(
              k,
              KnowledgeCategory.fromJson(e as Map<String, dynamic>),
            ),
          ),
        ),
      );
      return val;
    });

Map<String, dynamic> _$KnowledgeIndexToJson(_KnowledgeIndex instance) =>
    <String, dynamic>{
      'version': instance.version,
      'updatedAt': instance.updatedAt,
      'flow': instance.flow,
      'categories': instance.categories.map((k, e) => MapEntry(k, e.toJson())),
    };
