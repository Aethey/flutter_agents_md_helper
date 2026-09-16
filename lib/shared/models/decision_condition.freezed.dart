// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decision_condition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DecisionCondition {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DecisionCondition);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DecisionCondition()';
}


}

/// @nodoc
class $DecisionConditionCopyWith<$Res>  {
$DecisionConditionCopyWith(DecisionCondition _, $Res Function(DecisionCondition) __);
}


/// Adds pattern-matching-related methods to [DecisionCondition].
extension DecisionConditionPatterns on DecisionCondition {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DecisionConditionAll value)?  all,TResult Function( DecisionConditionAny value)?  any,TResult Function( DecisionConditionNot value)?  not,TResult Function( DecisionConditionEquals value)?  equals,TResult Function( DecisionConditionIn value)?  isIn,TResult Function( DecisionConditionContains value)?  contains,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DecisionConditionAll() when all != null:
return all(_that);case DecisionConditionAny() when any != null:
return any(_that);case DecisionConditionNot() when not != null:
return not(_that);case DecisionConditionEquals() when equals != null:
return equals(_that);case DecisionConditionIn() when isIn != null:
return isIn(_that);case DecisionConditionContains() when contains != null:
return contains(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DecisionConditionAll value)  all,required TResult Function( DecisionConditionAny value)  any,required TResult Function( DecisionConditionNot value)  not,required TResult Function( DecisionConditionEquals value)  equals,required TResult Function( DecisionConditionIn value)  isIn,required TResult Function( DecisionConditionContains value)  contains,}){
final _that = this;
switch (_that) {
case DecisionConditionAll():
return all(_that);case DecisionConditionAny():
return any(_that);case DecisionConditionNot():
return not(_that);case DecisionConditionEquals():
return equals(_that);case DecisionConditionIn():
return isIn(_that);case DecisionConditionContains():
return contains(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DecisionConditionAll value)?  all,TResult? Function( DecisionConditionAny value)?  any,TResult? Function( DecisionConditionNot value)?  not,TResult? Function( DecisionConditionEquals value)?  equals,TResult? Function( DecisionConditionIn value)?  isIn,TResult? Function( DecisionConditionContains value)?  contains,}){
final _that = this;
switch (_that) {
case DecisionConditionAll() when all != null:
return all(_that);case DecisionConditionAny() when any != null:
return any(_that);case DecisionConditionNot() when not != null:
return not(_that);case DecisionConditionEquals() when equals != null:
return equals(_that);case DecisionConditionIn() when isIn != null:
return isIn(_that);case DecisionConditionContains() when contains != null:
return contains(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<DecisionCondition> conditions)?  all,TResult Function( List<DecisionCondition> conditions)?  any,TResult Function( DecisionCondition condition)?  not,TResult Function( String decision,  String value)?  equals,TResult Function( String decision,  List<String> values)?  isIn,TResult Function( String decision,  String value)?  contains,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DecisionConditionAll() when all != null:
return all(_that.conditions);case DecisionConditionAny() when any != null:
return any(_that.conditions);case DecisionConditionNot() when not != null:
return not(_that.condition);case DecisionConditionEquals() when equals != null:
return equals(_that.decision,_that.value);case DecisionConditionIn() when isIn != null:
return isIn(_that.decision,_that.values);case DecisionConditionContains() when contains != null:
return contains(_that.decision,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<DecisionCondition> conditions)  all,required TResult Function( List<DecisionCondition> conditions)  any,required TResult Function( DecisionCondition condition)  not,required TResult Function( String decision,  String value)  equals,required TResult Function( String decision,  List<String> values)  isIn,required TResult Function( String decision,  String value)  contains,}) {final _that = this;
switch (_that) {
case DecisionConditionAll():
return all(_that.conditions);case DecisionConditionAny():
return any(_that.conditions);case DecisionConditionNot():
return not(_that.condition);case DecisionConditionEquals():
return equals(_that.decision,_that.value);case DecisionConditionIn():
return isIn(_that.decision,_that.values);case DecisionConditionContains():
return contains(_that.decision,_that.value);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<DecisionCondition> conditions)?  all,TResult? Function( List<DecisionCondition> conditions)?  any,TResult? Function( DecisionCondition condition)?  not,TResult? Function( String decision,  String value)?  equals,TResult? Function( String decision,  List<String> values)?  isIn,TResult? Function( String decision,  String value)?  contains,}) {final _that = this;
switch (_that) {
case DecisionConditionAll() when all != null:
return all(_that.conditions);case DecisionConditionAny() when any != null:
return any(_that.conditions);case DecisionConditionNot() when not != null:
return not(_that.condition);case DecisionConditionEquals() when equals != null:
return equals(_that.decision,_that.value);case DecisionConditionIn() when isIn != null:
return isIn(_that.decision,_that.values);case DecisionConditionContains() when contains != null:
return contains(_that.decision,_that.value);case _:
  return null;

}
}

}

/// @nodoc


class DecisionConditionAll extends DecisionCondition {
  const DecisionConditionAll(this.conditions): super._();
  

 final  List<DecisionCondition> conditions;

/// Create a copy of DecisionCondition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DecisionConditionAllCopyWith<DecisionConditionAll> get copyWith => _$DecisionConditionAllCopyWithImpl<DecisionConditionAll>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DecisionConditionAll&&const DeepCollectionEquality().equals(other.conditions, conditions));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(conditions));

@override
String toString() {
  return 'DecisionCondition.all(conditions: $conditions)';
}


}

/// @nodoc
abstract mixin class $DecisionConditionAllCopyWith<$Res> implements $DecisionConditionCopyWith<$Res> {
  factory $DecisionConditionAllCopyWith(DecisionConditionAll value, $Res Function(DecisionConditionAll) _then) = _$DecisionConditionAllCopyWithImpl;
@useResult
$Res call({
 List<DecisionCondition> conditions
});




}
/// @nodoc
class _$DecisionConditionAllCopyWithImpl<$Res>
    implements $DecisionConditionAllCopyWith<$Res> {
  _$DecisionConditionAllCopyWithImpl(this._self, this._then);

  final DecisionConditionAll _self;
  final $Res Function(DecisionConditionAll) _then;

/// Create a copy of DecisionCondition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? conditions = null,}) {
  return _then(DecisionConditionAll(
null == conditions ? _self.conditions : conditions // ignore: cast_nullable_to_non_nullable
as List<DecisionCondition>,
  ));
}


}

/// @nodoc


class DecisionConditionAny extends DecisionCondition {
  const DecisionConditionAny(this.conditions): super._();
  

 final  List<DecisionCondition> conditions;

/// Create a copy of DecisionCondition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DecisionConditionAnyCopyWith<DecisionConditionAny> get copyWith => _$DecisionConditionAnyCopyWithImpl<DecisionConditionAny>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DecisionConditionAny&&const DeepCollectionEquality().equals(other.conditions, conditions));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(conditions));

@override
String toString() {
  return 'DecisionCondition.any(conditions: $conditions)';
}


}

/// @nodoc
abstract mixin class $DecisionConditionAnyCopyWith<$Res> implements $DecisionConditionCopyWith<$Res> {
  factory $DecisionConditionAnyCopyWith(DecisionConditionAny value, $Res Function(DecisionConditionAny) _then) = _$DecisionConditionAnyCopyWithImpl;
@useResult
$Res call({
 List<DecisionCondition> conditions
});




}
/// @nodoc
class _$DecisionConditionAnyCopyWithImpl<$Res>
    implements $DecisionConditionAnyCopyWith<$Res> {
  _$DecisionConditionAnyCopyWithImpl(this._self, this._then);

  final DecisionConditionAny _self;
  final $Res Function(DecisionConditionAny) _then;

/// Create a copy of DecisionCondition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? conditions = null,}) {
  return _then(DecisionConditionAny(
null == conditions ? _self.conditions : conditions // ignore: cast_nullable_to_non_nullable
as List<DecisionCondition>,
  ));
}


}

/// @nodoc


class DecisionConditionNot extends DecisionCondition {
  const DecisionConditionNot(this.condition): super._();
  

 final  DecisionCondition condition;

/// Create a copy of DecisionCondition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DecisionConditionNotCopyWith<DecisionConditionNot> get copyWith => _$DecisionConditionNotCopyWithImpl<DecisionConditionNot>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DecisionConditionNot&&(identical(other.condition, condition) || other.condition == condition));
}


@override
int get hashCode => Object.hash(runtimeType,condition);

@override
String toString() {
  return 'DecisionCondition.not(condition: $condition)';
}


}

/// @nodoc
abstract mixin class $DecisionConditionNotCopyWith<$Res> implements $DecisionConditionCopyWith<$Res> {
  factory $DecisionConditionNotCopyWith(DecisionConditionNot value, $Res Function(DecisionConditionNot) _then) = _$DecisionConditionNotCopyWithImpl;
@useResult
$Res call({
 DecisionCondition condition
});


$DecisionConditionCopyWith<$Res> get condition;

}
/// @nodoc
class _$DecisionConditionNotCopyWithImpl<$Res>
    implements $DecisionConditionNotCopyWith<$Res> {
  _$DecisionConditionNotCopyWithImpl(this._self, this._then);

  final DecisionConditionNot _self;
  final $Res Function(DecisionConditionNot) _then;

/// Create a copy of DecisionCondition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? condition = null,}) {
  return _then(DecisionConditionNot(
null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as DecisionCondition,
  ));
}

/// Create a copy of DecisionCondition
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DecisionConditionCopyWith<$Res> get condition {
  
  return $DecisionConditionCopyWith<$Res>(_self.condition, (value) {
    return _then(_self.copyWith(condition: value));
  });
}
}

/// @nodoc


class DecisionConditionEquals extends DecisionCondition {
  const DecisionConditionEquals({required this.decision, required this.value}): super._();
  

 final  String decision;
 final  String value;

/// Create a copy of DecisionCondition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DecisionConditionEqualsCopyWith<DecisionConditionEquals> get copyWith => _$DecisionConditionEqualsCopyWithImpl<DecisionConditionEquals>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DecisionConditionEquals&&(identical(other.decision, decision) || other.decision == decision)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,decision,value);

@override
String toString() {
  return 'DecisionCondition.equals(decision: $decision, value: $value)';
}


}

/// @nodoc
abstract mixin class $DecisionConditionEqualsCopyWith<$Res> implements $DecisionConditionCopyWith<$Res> {
  factory $DecisionConditionEqualsCopyWith(DecisionConditionEquals value, $Res Function(DecisionConditionEquals) _then) = _$DecisionConditionEqualsCopyWithImpl;
@useResult
$Res call({
 String decision, String value
});




}
/// @nodoc
class _$DecisionConditionEqualsCopyWithImpl<$Res>
    implements $DecisionConditionEqualsCopyWith<$Res> {
  _$DecisionConditionEqualsCopyWithImpl(this._self, this._then);

  final DecisionConditionEquals _self;
  final $Res Function(DecisionConditionEquals) _then;

/// Create a copy of DecisionCondition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? decision = null,Object? value = null,}) {
  return _then(DecisionConditionEquals(
decision: null == decision ? _self.decision : decision // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DecisionConditionIn extends DecisionCondition {
  const DecisionConditionIn({required this.decision, required this.values}): super._();
  

 final  String decision;
 final  List<String> values;

/// Create a copy of DecisionCondition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DecisionConditionInCopyWith<DecisionConditionIn> get copyWith => _$DecisionConditionInCopyWithImpl<DecisionConditionIn>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DecisionConditionIn&&(identical(other.decision, decision) || other.decision == decision)&&const DeepCollectionEquality().equals(other.values, values));
}


@override
int get hashCode => Object.hash(runtimeType,decision,const DeepCollectionEquality().hash(values));

@override
String toString() {
  return 'DecisionCondition.isIn(decision: $decision, values: $values)';
}


}

/// @nodoc
abstract mixin class $DecisionConditionInCopyWith<$Res> implements $DecisionConditionCopyWith<$Res> {
  factory $DecisionConditionInCopyWith(DecisionConditionIn value, $Res Function(DecisionConditionIn) _then) = _$DecisionConditionInCopyWithImpl;
@useResult
$Res call({
 String decision, List<String> values
});




}
/// @nodoc
class _$DecisionConditionInCopyWithImpl<$Res>
    implements $DecisionConditionInCopyWith<$Res> {
  _$DecisionConditionInCopyWithImpl(this._self, this._then);

  final DecisionConditionIn _self;
  final $Res Function(DecisionConditionIn) _then;

/// Create a copy of DecisionCondition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? decision = null,Object? values = null,}) {
  return _then(DecisionConditionIn(
decision: null == decision ? _self.decision : decision // ignore: cast_nullable_to_non_nullable
as String,values: null == values ? _self.values : values // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class DecisionConditionContains extends DecisionCondition {
  const DecisionConditionContains({required this.decision, required this.value}): super._();
  

 final  String decision;
 final  String value;

/// Create a copy of DecisionCondition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DecisionConditionContainsCopyWith<DecisionConditionContains> get copyWith => _$DecisionConditionContainsCopyWithImpl<DecisionConditionContains>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DecisionConditionContains&&(identical(other.decision, decision) || other.decision == decision)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,decision,value);

@override
String toString() {
  return 'DecisionCondition.contains(decision: $decision, value: $value)';
}


}

/// @nodoc
abstract mixin class $DecisionConditionContainsCopyWith<$Res> implements $DecisionConditionCopyWith<$Res> {
  factory $DecisionConditionContainsCopyWith(DecisionConditionContains value, $Res Function(DecisionConditionContains) _then) = _$DecisionConditionContainsCopyWithImpl;
@useResult
$Res call({
 String decision, String value
});




}
/// @nodoc
class _$DecisionConditionContainsCopyWithImpl<$Res>
    implements $DecisionConditionContainsCopyWith<$Res> {
  _$DecisionConditionContainsCopyWithImpl(this._self, this._then);

  final DecisionConditionContains _self;
  final $Res Function(DecisionConditionContains) _then;

/// Create a copy of DecisionCondition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? decision = null,Object? value = null,}) {
  return _then(DecisionConditionContains(
decision: null == decision ? _self.decision : decision // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
