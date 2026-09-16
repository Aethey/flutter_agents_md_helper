import 'package:freezed_annotation/freezed_annotation.dart';

part 'localized_text.freezed.dart';
part 'localized_text.g.dart';

@freezed
abstract class LocalizedText with _$LocalizedText {
  const factory LocalizedText({
    required String en,
    required String zh,
    required String ja,
  }) = _LocalizedText;

  const LocalizedText._();

  factory LocalizedText.fromJson(Map<String, dynamic> json) =>
      _$LocalizedTextFromJson(json);

  String resolve(String languageCode) {
    return switch (languageCode) {
      'zh' => zh,
      'ja' => ja,
      _ => en,
    };
  }
}

@freezed
abstract class LocalizedStringList with _$LocalizedStringList {
  const factory LocalizedStringList({
    required List<String> en,
    required List<String> zh,
    required List<String> ja,
  }) = _LocalizedStringList;

  const LocalizedStringList._();

  factory LocalizedStringList.fromJson(Map<String, dynamic> json) =>
      _$LocalizedStringListFromJson(json);

  List<String> resolve(String languageCode) {
    return switch (languageCode) {
      'zh' => zh,
      'ja' => ja,
      _ => en,
    };
  }
}
