import 'package:freezed_annotation/freezed_annotation.dart';

part 'architecture_selection.freezed.dart';

@freezed
sealed class ArchitectureSelection with _$ArchitectureSelection {
  const ArchitectureSelection._();

  const factory ArchitectureSelection.single(String optionId) = SingleSelection;

  const factory ArchitectureSelection.multiple(List<String> optionIds) =
      MultipleSelection;

  bool contains(String candidate) {
    return switch (this) {
      SingleSelection(:final optionId) => optionId == candidate,
      MultipleSelection(:final optionIds) => optionIds.contains(candidate),
    };
  }

  List<String> get optionIds {
    return switch (this) {
      SingleSelection(:final optionId) => [optionId],
      MultipleSelection(:final optionIds) => List<String>.unmodifiable(
        optionIds,
      ),
    };
  }

  String? get singleId {
    return switch (this) {
      SingleSelection(:final optionId) => optionId,
      MultipleSelection() => null,
    };
  }
}
