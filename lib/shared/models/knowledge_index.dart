import 'package:freezed_annotation/freezed_annotation.dart';

part 'knowledge_index.freezed.dart';
part 'knowledge_index.g.dart';

@freezed
abstract class KnowledgeIndexEntry with _$KnowledgeIndexEntry {
  const factory KnowledgeIndexEntry({
    required String id,
    required String file,
  }) = _KnowledgeIndexEntry;

  factory KnowledgeIndexEntry.fromJson(Map<String, dynamic> json) =>
      _$KnowledgeIndexEntryFromJson(json);
}

@freezed
abstract class KnowledgeCategory with _$KnowledgeCategory {
  const factory KnowledgeCategory({
    required String path,
    required List<KnowledgeIndexEntry> entries,
  }) = _KnowledgeCategory;

  factory KnowledgeCategory.fromJson(Map<String, dynamic> json) =>
      _$KnowledgeCategoryFromJson(json);
}

@freezed
abstract class KnowledgeIndex with _$KnowledgeIndex {
  const factory KnowledgeIndex({
    required String version,
    required String updatedAt,
    required String flow,
    required Map<String, KnowledgeCategory> categories,
  }) = _KnowledgeIndex;

  const KnowledgeIndex._();

  factory KnowledgeIndex.fromJson(Map<String, dynamic> json) =>
      _$KnowledgeIndexFromJson(json);

  String fileFor(String technologyId) {
    for (final category in categories.values) {
      for (final entry in category.entries) {
        if (entry.id == technologyId) {
          return 'knowledge/${category.path}/${entry.file}';
        }
      }
    }
    throw StateError(
      'Technology $technologyId is missing from knowledge/index.json',
    );
  }
}
