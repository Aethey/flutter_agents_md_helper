import 'package:freezed_annotation/freezed_annotation.dart';

part 'knowledge_source.freezed.dart';
part 'knowledge_source.g.dart';

@freezed
abstract class KnowledgeSource with _$KnowledgeSource {
  const factory KnowledgeSource({required String title, required String url}) =
      _KnowledgeSource;

  factory KnowledgeSource.fromJson(Map<String, dynamic> json) =>
      _$KnowledgeSourceFromJson(json);
}
