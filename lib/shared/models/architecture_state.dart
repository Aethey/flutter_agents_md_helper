import 'package:freezed_annotation/freezed_annotation.dart';

import 'architecture_selection.dart';

part 'architecture_state.freezed.dart';

@freezed
abstract class ArchitectureState with _$ArchitectureState {
  const factory ArchitectureState({
    @Default({}) Map<String, ArchitectureSelection> answers,
    String? currentDecisionId,
    String? selectedOptionId,
    @Default([]) List<String> selectedOptionIds,
    String? previewedOptionId,
  }) = _ArchitectureState;
}
