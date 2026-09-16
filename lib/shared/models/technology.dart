import 'package:freezed_annotation/freezed_annotation.dart';

import 'knowledge_source.dart';

part 'technology.freezed.dart';
part 'technology.g.dart';

enum TechnologyKind { requirement, package, pattern }

@freezed
abstract class TechnologyCopy with _$TechnologyCopy {
  const factory TechnologyCopy({
    required String label,
    required String name,
    required String summary,
    required String description,
    required List<String> advantages,
    required List<String> tradeOffs,
    required List<String> recommendedWhen,
    required List<String> avoidWhen,
    required List<String> worksWellWith,
  }) = _TechnologyCopy;

  factory TechnologyCopy.fromJson(Map<String, dynamic> json) =>
      _$TechnologyCopyFromJson(json);
}

@freezed
abstract class LocalizedTechnologyCopy with _$LocalizedTechnologyCopy {
  const factory LocalizedTechnologyCopy({
    required TechnologyCopy en,
    required TechnologyCopy zh,
    required TechnologyCopy ja,
  }) = _LocalizedTechnologyCopy;

  const LocalizedTechnologyCopy._();

  factory LocalizedTechnologyCopy.fromJson(Map<String, dynamic> json) =>
      _$LocalizedTechnologyCopyFromJson(json);

  TechnologyCopy resolve(String languageCode) {
    return switch (languageCode) {
      'zh' => zh,
      'ja' => ja,
      _ => en,
    };
  }
}

@freezed
abstract class Technology with _$Technology {
  const factory Technology({
    required String id,
    required String category,
    required TechnologyKind kind,
    String? packageName,
    @Default([]) List<String> impliedPackages,
    required String docsUrl,
    required String verifiedAt,
    required List<KnowledgeSource> sources,
    required List<String> facts,
    required LocalizedTechnologyCopy copy,
  }) = _Technology;

  factory Technology.fromJson(Map<String, dynamic> json) =>
      _$TechnologyFromJson(json);
}
