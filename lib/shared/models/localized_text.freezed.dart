// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'localized_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LocalizedText {

 String get en; String get zh; String get ja;
/// Create a copy of LocalizedText
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<LocalizedText> get copyWith => _$LocalizedTextCopyWithImpl<LocalizedText>(this as LocalizedText, _$identity);

  /// Serializes this LocalizedText to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalizedText&&(identical(other.en, en) || other.en == en)&&(identical(other.zh, zh) || other.zh == zh)&&(identical(other.ja, ja) || other.ja == ja));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,en,zh,ja);

@override
String toString() {
  return 'LocalizedText(en: $en, zh: $zh, ja: $ja)';
}


}

/// @nodoc
abstract mixin class $LocalizedTextCopyWith<$Res>  {
  factory $LocalizedTextCopyWith(LocalizedText value, $Res Function(LocalizedText) _then) = _$LocalizedTextCopyWithImpl;
@useResult
$Res call({
 String en, String zh, String ja
});




}
/// @nodoc
class _$LocalizedTextCopyWithImpl<$Res>
    implements $LocalizedTextCopyWith<$Res> {
  _$LocalizedTextCopyWithImpl(this._self, this._then);

  final LocalizedText _self;
  final $Res Function(LocalizedText) _then;

/// Create a copy of LocalizedText
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? en = null,Object? zh = null,Object? ja = null,}) {
  return _then(_self.copyWith(
en: null == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String,zh: null == zh ? _self.zh : zh // ignore: cast_nullable_to_non_nullable
as String,ja: null == ja ? _self.ja : ja // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LocalizedText].
extension LocalizedTextPatterns on LocalizedText {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocalizedText value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocalizedText() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocalizedText value)  $default,){
final _that = this;
switch (_that) {
case _LocalizedText():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocalizedText value)?  $default,){
final _that = this;
switch (_that) {
case _LocalizedText() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String en,  String zh,  String ja)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocalizedText() when $default != null:
return $default(_that.en,_that.zh,_that.ja);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String en,  String zh,  String ja)  $default,) {final _that = this;
switch (_that) {
case _LocalizedText():
return $default(_that.en,_that.zh,_that.ja);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String en,  String zh,  String ja)?  $default,) {final _that = this;
switch (_that) {
case _LocalizedText() when $default != null:
return $default(_that.en,_that.zh,_that.ja);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LocalizedText extends LocalizedText {
  const _LocalizedText({required this.en, required this.zh, required this.ja}): super._();
  factory _LocalizedText.fromJson(Map<String, dynamic> json) => _$LocalizedTextFromJson(json);

@override final  String en;
@override final  String zh;
@override final  String ja;

/// Create a copy of LocalizedText
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocalizedTextCopyWith<_LocalizedText> get copyWith => __$LocalizedTextCopyWithImpl<_LocalizedText>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocalizedTextToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocalizedText&&(identical(other.en, en) || other.en == en)&&(identical(other.zh, zh) || other.zh == zh)&&(identical(other.ja, ja) || other.ja == ja));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,en,zh,ja);

@override
String toString() {
  return 'LocalizedText(en: $en, zh: $zh, ja: $ja)';
}


}

/// @nodoc
abstract mixin class _$LocalizedTextCopyWith<$Res> implements $LocalizedTextCopyWith<$Res> {
  factory _$LocalizedTextCopyWith(_LocalizedText value, $Res Function(_LocalizedText) _then) = __$LocalizedTextCopyWithImpl;
@override @useResult
$Res call({
 String en, String zh, String ja
});




}
/// @nodoc
class __$LocalizedTextCopyWithImpl<$Res>
    implements _$LocalizedTextCopyWith<$Res> {
  __$LocalizedTextCopyWithImpl(this._self, this._then);

  final _LocalizedText _self;
  final $Res Function(_LocalizedText) _then;

/// Create a copy of LocalizedText
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? en = null,Object? zh = null,Object? ja = null,}) {
  return _then(_LocalizedText(
en: null == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String,zh: null == zh ? _self.zh : zh // ignore: cast_nullable_to_non_nullable
as String,ja: null == ja ? _self.ja : ja // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$LocalizedStringList {

 List<String> get en; List<String> get zh; List<String> get ja;
/// Create a copy of LocalizedStringList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocalizedStringListCopyWith<LocalizedStringList> get copyWith => _$LocalizedStringListCopyWithImpl<LocalizedStringList>(this as LocalizedStringList, _$identity);

  /// Serializes this LocalizedStringList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalizedStringList&&const DeepCollectionEquality().equals(other.en, en)&&const DeepCollectionEquality().equals(other.zh, zh)&&const DeepCollectionEquality().equals(other.ja, ja));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(en),const DeepCollectionEquality().hash(zh),const DeepCollectionEquality().hash(ja));

@override
String toString() {
  return 'LocalizedStringList(en: $en, zh: $zh, ja: $ja)';
}


}

/// @nodoc
abstract mixin class $LocalizedStringListCopyWith<$Res>  {
  factory $LocalizedStringListCopyWith(LocalizedStringList value, $Res Function(LocalizedStringList) _then) = _$LocalizedStringListCopyWithImpl;
@useResult
$Res call({
 List<String> en, List<String> zh, List<String> ja
});




}
/// @nodoc
class _$LocalizedStringListCopyWithImpl<$Res>
    implements $LocalizedStringListCopyWith<$Res> {
  _$LocalizedStringListCopyWithImpl(this._self, this._then);

  final LocalizedStringList _self;
  final $Res Function(LocalizedStringList) _then;

/// Create a copy of LocalizedStringList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? en = null,Object? zh = null,Object? ja = null,}) {
  return _then(_self.copyWith(
en: null == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as List<String>,zh: null == zh ? _self.zh : zh // ignore: cast_nullable_to_non_nullable
as List<String>,ja: null == ja ? _self.ja : ja // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [LocalizedStringList].
extension LocalizedStringListPatterns on LocalizedStringList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocalizedStringList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocalizedStringList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocalizedStringList value)  $default,){
final _that = this;
switch (_that) {
case _LocalizedStringList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocalizedStringList value)?  $default,){
final _that = this;
switch (_that) {
case _LocalizedStringList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> en,  List<String> zh,  List<String> ja)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocalizedStringList() when $default != null:
return $default(_that.en,_that.zh,_that.ja);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> en,  List<String> zh,  List<String> ja)  $default,) {final _that = this;
switch (_that) {
case _LocalizedStringList():
return $default(_that.en,_that.zh,_that.ja);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> en,  List<String> zh,  List<String> ja)?  $default,) {final _that = this;
switch (_that) {
case _LocalizedStringList() when $default != null:
return $default(_that.en,_that.zh,_that.ja);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LocalizedStringList extends LocalizedStringList {
  const _LocalizedStringList({required this.en, required this.zh, required this.ja}): super._();
  factory _LocalizedStringList.fromJson(Map<String, dynamic> json) => _$LocalizedStringListFromJson(json);

@override final  List<String> en;
@override final  List<String> zh;
@override final  List<String> ja;

/// Create a copy of LocalizedStringList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocalizedStringListCopyWith<_LocalizedStringList> get copyWith => __$LocalizedStringListCopyWithImpl<_LocalizedStringList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocalizedStringListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocalizedStringList&&const DeepCollectionEquality().equals(other.en, en)&&const DeepCollectionEquality().equals(other.zh, zh)&&const DeepCollectionEquality().equals(other.ja, ja));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(en),const DeepCollectionEquality().hash(zh),const DeepCollectionEquality().hash(ja));

@override
String toString() {
  return 'LocalizedStringList(en: $en, zh: $zh, ja: $ja)';
}


}

/// @nodoc
abstract mixin class _$LocalizedStringListCopyWith<$Res> implements $LocalizedStringListCopyWith<$Res> {
  factory _$LocalizedStringListCopyWith(_LocalizedStringList value, $Res Function(_LocalizedStringList) _then) = __$LocalizedStringListCopyWithImpl;
@override @useResult
$Res call({
 List<String> en, List<String> zh, List<String> ja
});




}
/// @nodoc
class __$LocalizedStringListCopyWithImpl<$Res>
    implements _$LocalizedStringListCopyWith<$Res> {
  __$LocalizedStringListCopyWithImpl(this._self, this._then);

  final _LocalizedStringList _self;
  final $Res Function(_LocalizedStringList) _then;

/// Create a copy of LocalizedStringList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? en = null,Object? zh = null,Object? ja = null,}) {
  return _then(_LocalizedStringList(
en: null == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as List<String>,zh: null == zh ? _self.zh : zh // ignore: cast_nullable_to_non_nullable
as List<String>,ja: null == ja ? _self.ja : ja // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
