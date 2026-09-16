// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'architecture_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ArchitectureState {

 Map<String, ArchitectureSelection> get answers; String? get currentDecisionId; String? get selectedOptionId; List<String> get selectedOptionIds; String? get previewedOptionId;
/// Create a copy of ArchitectureState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArchitectureStateCopyWith<ArchitectureState> get copyWith => _$ArchitectureStateCopyWithImpl<ArchitectureState>(this as ArchitectureState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArchitectureState&&const DeepCollectionEquality().equals(other.answers, answers)&&(identical(other.currentDecisionId, currentDecisionId) || other.currentDecisionId == currentDecisionId)&&(identical(other.selectedOptionId, selectedOptionId) || other.selectedOptionId == selectedOptionId)&&const DeepCollectionEquality().equals(other.selectedOptionIds, selectedOptionIds)&&(identical(other.previewedOptionId, previewedOptionId) || other.previewedOptionId == previewedOptionId));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(answers),currentDecisionId,selectedOptionId,const DeepCollectionEquality().hash(selectedOptionIds),previewedOptionId);

@override
String toString() {
  return 'ArchitectureState(answers: $answers, currentDecisionId: $currentDecisionId, selectedOptionId: $selectedOptionId, selectedOptionIds: $selectedOptionIds, previewedOptionId: $previewedOptionId)';
}


}

/// @nodoc
abstract mixin class $ArchitectureStateCopyWith<$Res>  {
  factory $ArchitectureStateCopyWith(ArchitectureState value, $Res Function(ArchitectureState) _then) = _$ArchitectureStateCopyWithImpl;
@useResult
$Res call({
 Map<String, ArchitectureSelection> answers, String? currentDecisionId, String? selectedOptionId, List<String> selectedOptionIds, String? previewedOptionId
});




}
/// @nodoc
class _$ArchitectureStateCopyWithImpl<$Res>
    implements $ArchitectureStateCopyWith<$Res> {
  _$ArchitectureStateCopyWithImpl(this._self, this._then);

  final ArchitectureState _self;
  final $Res Function(ArchitectureState) _then;

/// Create a copy of ArchitectureState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? answers = null,Object? currentDecisionId = freezed,Object? selectedOptionId = freezed,Object? selectedOptionIds = null,Object? previewedOptionId = freezed,}) {
  return _then(_self.copyWith(
answers: null == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as Map<String, ArchitectureSelection>,currentDecisionId: freezed == currentDecisionId ? _self.currentDecisionId : currentDecisionId // ignore: cast_nullable_to_non_nullable
as String?,selectedOptionId: freezed == selectedOptionId ? _self.selectedOptionId : selectedOptionId // ignore: cast_nullable_to_non_nullable
as String?,selectedOptionIds: null == selectedOptionIds ? _self.selectedOptionIds : selectedOptionIds // ignore: cast_nullable_to_non_nullable
as List<String>,previewedOptionId: freezed == previewedOptionId ? _self.previewedOptionId : previewedOptionId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ArchitectureState].
extension ArchitectureStatePatterns on ArchitectureState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArchitectureState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArchitectureState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArchitectureState value)  $default,){
final _that = this;
switch (_that) {
case _ArchitectureState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArchitectureState value)?  $default,){
final _that = this;
switch (_that) {
case _ArchitectureState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, ArchitectureSelection> answers,  String? currentDecisionId,  String? selectedOptionId,  List<String> selectedOptionIds,  String? previewedOptionId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArchitectureState() when $default != null:
return $default(_that.answers,_that.currentDecisionId,_that.selectedOptionId,_that.selectedOptionIds,_that.previewedOptionId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, ArchitectureSelection> answers,  String? currentDecisionId,  String? selectedOptionId,  List<String> selectedOptionIds,  String? previewedOptionId)  $default,) {final _that = this;
switch (_that) {
case _ArchitectureState():
return $default(_that.answers,_that.currentDecisionId,_that.selectedOptionId,_that.selectedOptionIds,_that.previewedOptionId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, ArchitectureSelection> answers,  String? currentDecisionId,  String? selectedOptionId,  List<String> selectedOptionIds,  String? previewedOptionId)?  $default,) {final _that = this;
switch (_that) {
case _ArchitectureState() when $default != null:
return $default(_that.answers,_that.currentDecisionId,_that.selectedOptionId,_that.selectedOptionIds,_that.previewedOptionId);case _:
  return null;

}
}

}

/// @nodoc


class _ArchitectureState implements ArchitectureState {
  const _ArchitectureState({this.answers = const {}, this.currentDecisionId, this.selectedOptionId, this.selectedOptionIds = const [], this.previewedOptionId});
  

@override@JsonKey() final  Map<String, ArchitectureSelection> answers;
@override final  String? currentDecisionId;
@override final  String? selectedOptionId;
@override@JsonKey() final  List<String> selectedOptionIds;
@override final  String? previewedOptionId;

/// Create a copy of ArchitectureState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArchitectureStateCopyWith<_ArchitectureState> get copyWith => __$ArchitectureStateCopyWithImpl<_ArchitectureState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArchitectureState&&const DeepCollectionEquality().equals(other.answers, answers)&&(identical(other.currentDecisionId, currentDecisionId) || other.currentDecisionId == currentDecisionId)&&(identical(other.selectedOptionId, selectedOptionId) || other.selectedOptionId == selectedOptionId)&&const DeepCollectionEquality().equals(other.selectedOptionIds, selectedOptionIds)&&(identical(other.previewedOptionId, previewedOptionId) || other.previewedOptionId == previewedOptionId));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(answers),currentDecisionId,selectedOptionId,const DeepCollectionEquality().hash(selectedOptionIds),previewedOptionId);

@override
String toString() {
  return 'ArchitectureState(answers: $answers, currentDecisionId: $currentDecisionId, selectedOptionId: $selectedOptionId, selectedOptionIds: $selectedOptionIds, previewedOptionId: $previewedOptionId)';
}


}

/// @nodoc
abstract mixin class _$ArchitectureStateCopyWith<$Res> implements $ArchitectureStateCopyWith<$Res> {
  factory _$ArchitectureStateCopyWith(_ArchitectureState value, $Res Function(_ArchitectureState) _then) = __$ArchitectureStateCopyWithImpl;
@override @useResult
$Res call({
 Map<String, ArchitectureSelection> answers, String? currentDecisionId, String? selectedOptionId, List<String> selectedOptionIds, String? previewedOptionId
});




}
/// @nodoc
class __$ArchitectureStateCopyWithImpl<$Res>
    implements _$ArchitectureStateCopyWith<$Res> {
  __$ArchitectureStateCopyWithImpl(this._self, this._then);

  final _ArchitectureState _self;
  final $Res Function(_ArchitectureState) _then;

/// Create a copy of ArchitectureState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? answers = null,Object? currentDecisionId = freezed,Object? selectedOptionId = freezed,Object? selectedOptionIds = null,Object? previewedOptionId = freezed,}) {
  return _then(_ArchitectureState(
answers: null == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as Map<String, ArchitectureSelection>,currentDecisionId: freezed == currentDecisionId ? _self.currentDecisionId : currentDecisionId // ignore: cast_nullable_to_non_nullable
as String?,selectedOptionId: freezed == selectedOptionId ? _self.selectedOptionId : selectedOptionId // ignore: cast_nullable_to_non_nullable
as String?,selectedOptionIds: null == selectedOptionIds ? _self.selectedOptionIds : selectedOptionIds // ignore: cast_nullable_to_non_nullable
as List<String>,previewedOptionId: freezed == previewedOptionId ? _self.previewedOptionId : previewedOptionId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
