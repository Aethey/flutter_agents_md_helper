// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'architecture_selection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ArchitectureSelection {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArchitectureSelection);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArchitectureSelection()';
}


}

/// @nodoc
class $ArchitectureSelectionCopyWith<$Res>  {
$ArchitectureSelectionCopyWith(ArchitectureSelection _, $Res Function(ArchitectureSelection) __);
}


/// Adds pattern-matching-related methods to [ArchitectureSelection].
extension ArchitectureSelectionPatterns on ArchitectureSelection {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SingleSelection value)?  single,TResult Function( MultipleSelection value)?  multiple,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SingleSelection() when single != null:
return single(_that);case MultipleSelection() when multiple != null:
return multiple(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SingleSelection value)  single,required TResult Function( MultipleSelection value)  multiple,}){
final _that = this;
switch (_that) {
case SingleSelection():
return single(_that);case MultipleSelection():
return multiple(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SingleSelection value)?  single,TResult? Function( MultipleSelection value)?  multiple,}){
final _that = this;
switch (_that) {
case SingleSelection() when single != null:
return single(_that);case MultipleSelection() when multiple != null:
return multiple(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String optionId)?  single,TResult Function( List<String> optionIds)?  multiple,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SingleSelection() when single != null:
return single(_that.optionId);case MultipleSelection() when multiple != null:
return multiple(_that.optionIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String optionId)  single,required TResult Function( List<String> optionIds)  multiple,}) {final _that = this;
switch (_that) {
case SingleSelection():
return single(_that.optionId);case MultipleSelection():
return multiple(_that.optionIds);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String optionId)?  single,TResult? Function( List<String> optionIds)?  multiple,}) {final _that = this;
switch (_that) {
case SingleSelection() when single != null:
return single(_that.optionId);case MultipleSelection() when multiple != null:
return multiple(_that.optionIds);case _:
  return null;

}
}

}

/// @nodoc


class SingleSelection extends ArchitectureSelection {
  const SingleSelection(this.optionId): super._();
  

 final  String optionId;

/// Create a copy of ArchitectureSelection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SingleSelectionCopyWith<SingleSelection> get copyWith => _$SingleSelectionCopyWithImpl<SingleSelection>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SingleSelection&&(identical(other.optionId, optionId) || other.optionId == optionId));
}


@override
int get hashCode => Object.hash(runtimeType,optionId);

@override
String toString() {
  return 'ArchitectureSelection.single(optionId: $optionId)';
}


}

/// @nodoc
abstract mixin class $SingleSelectionCopyWith<$Res> implements $ArchitectureSelectionCopyWith<$Res> {
  factory $SingleSelectionCopyWith(SingleSelection value, $Res Function(SingleSelection) _then) = _$SingleSelectionCopyWithImpl;
@useResult
$Res call({
 String optionId
});




}
/// @nodoc
class _$SingleSelectionCopyWithImpl<$Res>
    implements $SingleSelectionCopyWith<$Res> {
  _$SingleSelectionCopyWithImpl(this._self, this._then);

  final SingleSelection _self;
  final $Res Function(SingleSelection) _then;

/// Create a copy of ArchitectureSelection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? optionId = null,}) {
  return _then(SingleSelection(
null == optionId ? _self.optionId : optionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class MultipleSelection extends ArchitectureSelection {
  const MultipleSelection(this.optionIds): super._();
  

 final  List<String> optionIds;

/// Create a copy of ArchitectureSelection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MultipleSelectionCopyWith<MultipleSelection> get copyWith => _$MultipleSelectionCopyWithImpl<MultipleSelection>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MultipleSelection&&const DeepCollectionEquality().equals(other.optionIds, optionIds));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(optionIds));

@override
String toString() {
  return 'ArchitectureSelection.multiple(optionIds: $optionIds)';
}


}

/// @nodoc
abstract mixin class $MultipleSelectionCopyWith<$Res> implements $ArchitectureSelectionCopyWith<$Res> {
  factory $MultipleSelectionCopyWith(MultipleSelection value, $Res Function(MultipleSelection) _then) = _$MultipleSelectionCopyWithImpl;
@useResult
$Res call({
 List<String> optionIds
});




}
/// @nodoc
class _$MultipleSelectionCopyWithImpl<$Res>
    implements $MultipleSelectionCopyWith<$Res> {
  _$MultipleSelectionCopyWithImpl(this._self, this._then);

  final MultipleSelection _self;
  final $Res Function(MultipleSelection) _then;

/// Create a copy of ArchitectureSelection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? optionIds = null,}) {
  return _then(MultipleSelection(
null == optionIds ? _self.optionIds : optionIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
