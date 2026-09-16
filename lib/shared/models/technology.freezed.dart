// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'technology.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TechnologyCopy {

 String get label; String get name; String get summary; String get description; List<String> get advantages; List<String> get tradeOffs; List<String> get recommendedWhen; List<String> get avoidWhen; List<String> get worksWellWith;
/// Create a copy of TechnologyCopy
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TechnologyCopyCopyWith<TechnologyCopy> get copyWith => _$TechnologyCopyCopyWithImpl<TechnologyCopy>(this as TechnologyCopy, _$identity);

  /// Serializes this TechnologyCopy to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TechnologyCopy&&(identical(other.label, label) || other.label == label)&&(identical(other.name, name) || other.name == name)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.advantages, advantages)&&const DeepCollectionEquality().equals(other.tradeOffs, tradeOffs)&&const DeepCollectionEquality().equals(other.recommendedWhen, recommendedWhen)&&const DeepCollectionEquality().equals(other.avoidWhen, avoidWhen)&&const DeepCollectionEquality().equals(other.worksWellWith, worksWellWith));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,name,summary,description,const DeepCollectionEquality().hash(advantages),const DeepCollectionEquality().hash(tradeOffs),const DeepCollectionEquality().hash(recommendedWhen),const DeepCollectionEquality().hash(avoidWhen),const DeepCollectionEquality().hash(worksWellWith));

@override
String toString() {
  return 'TechnologyCopy(label: $label, name: $name, summary: $summary, description: $description, advantages: $advantages, tradeOffs: $tradeOffs, recommendedWhen: $recommendedWhen, avoidWhen: $avoidWhen, worksWellWith: $worksWellWith)';
}


}

/// @nodoc
abstract mixin class $TechnologyCopyCopyWith<$Res>  {
  factory $TechnologyCopyCopyWith(TechnologyCopy value, $Res Function(TechnologyCopy) _then) = _$TechnologyCopyCopyWithImpl;
@useResult
$Res call({
 String label, String name, String summary, String description, List<String> advantages, List<String> tradeOffs, List<String> recommendedWhen, List<String> avoidWhen, List<String> worksWellWith
});




}
/// @nodoc
class _$TechnologyCopyCopyWithImpl<$Res>
    implements $TechnologyCopyCopyWith<$Res> {
  _$TechnologyCopyCopyWithImpl(this._self, this._then);

  final TechnologyCopy _self;
  final $Res Function(TechnologyCopy) _then;

/// Create a copy of TechnologyCopy
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? name = null,Object? summary = null,Object? description = null,Object? advantages = null,Object? tradeOffs = null,Object? recommendedWhen = null,Object? avoidWhen = null,Object? worksWellWith = null,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,advantages: null == advantages ? _self.advantages : advantages // ignore: cast_nullable_to_non_nullable
as List<String>,tradeOffs: null == tradeOffs ? _self.tradeOffs : tradeOffs // ignore: cast_nullable_to_non_nullable
as List<String>,recommendedWhen: null == recommendedWhen ? _self.recommendedWhen : recommendedWhen // ignore: cast_nullable_to_non_nullable
as List<String>,avoidWhen: null == avoidWhen ? _self.avoidWhen : avoidWhen // ignore: cast_nullable_to_non_nullable
as List<String>,worksWellWith: null == worksWellWith ? _self.worksWellWith : worksWellWith // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [TechnologyCopy].
extension TechnologyCopyPatterns on TechnologyCopy {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TechnologyCopy value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TechnologyCopy() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TechnologyCopy value)  $default,){
final _that = this;
switch (_that) {
case _TechnologyCopy():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TechnologyCopy value)?  $default,){
final _that = this;
switch (_that) {
case _TechnologyCopy() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String label,  String name,  String summary,  String description,  List<String> advantages,  List<String> tradeOffs,  List<String> recommendedWhen,  List<String> avoidWhen,  List<String> worksWellWith)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TechnologyCopy() when $default != null:
return $default(_that.label,_that.name,_that.summary,_that.description,_that.advantages,_that.tradeOffs,_that.recommendedWhen,_that.avoidWhen,_that.worksWellWith);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String label,  String name,  String summary,  String description,  List<String> advantages,  List<String> tradeOffs,  List<String> recommendedWhen,  List<String> avoidWhen,  List<String> worksWellWith)  $default,) {final _that = this;
switch (_that) {
case _TechnologyCopy():
return $default(_that.label,_that.name,_that.summary,_that.description,_that.advantages,_that.tradeOffs,_that.recommendedWhen,_that.avoidWhen,_that.worksWellWith);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String label,  String name,  String summary,  String description,  List<String> advantages,  List<String> tradeOffs,  List<String> recommendedWhen,  List<String> avoidWhen,  List<String> worksWellWith)?  $default,) {final _that = this;
switch (_that) {
case _TechnologyCopy() when $default != null:
return $default(_that.label,_that.name,_that.summary,_that.description,_that.advantages,_that.tradeOffs,_that.recommendedWhen,_that.avoidWhen,_that.worksWellWith);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TechnologyCopy implements TechnologyCopy {
  const _TechnologyCopy({required this.label, required this.name, required this.summary, required this.description, required this.advantages, required this.tradeOffs, required this.recommendedWhen, required this.avoidWhen, required this.worksWellWith});
  factory _TechnologyCopy.fromJson(Map<String, dynamic> json) => _$TechnologyCopyFromJson(json);

@override final  String label;
@override final  String name;
@override final  String summary;
@override final  String description;
@override final  List<String> advantages;
@override final  List<String> tradeOffs;
@override final  List<String> recommendedWhen;
@override final  List<String> avoidWhen;
@override final  List<String> worksWellWith;

/// Create a copy of TechnologyCopy
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TechnologyCopyCopyWith<_TechnologyCopy> get copyWith => __$TechnologyCopyCopyWithImpl<_TechnologyCopy>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TechnologyCopyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TechnologyCopy&&(identical(other.label, label) || other.label == label)&&(identical(other.name, name) || other.name == name)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.advantages, advantages)&&const DeepCollectionEquality().equals(other.tradeOffs, tradeOffs)&&const DeepCollectionEquality().equals(other.recommendedWhen, recommendedWhen)&&const DeepCollectionEquality().equals(other.avoidWhen, avoidWhen)&&const DeepCollectionEquality().equals(other.worksWellWith, worksWellWith));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,name,summary,description,const DeepCollectionEquality().hash(advantages),const DeepCollectionEquality().hash(tradeOffs),const DeepCollectionEquality().hash(recommendedWhen),const DeepCollectionEquality().hash(avoidWhen),const DeepCollectionEquality().hash(worksWellWith));

@override
String toString() {
  return 'TechnologyCopy(label: $label, name: $name, summary: $summary, description: $description, advantages: $advantages, tradeOffs: $tradeOffs, recommendedWhen: $recommendedWhen, avoidWhen: $avoidWhen, worksWellWith: $worksWellWith)';
}


}

/// @nodoc
abstract mixin class _$TechnologyCopyCopyWith<$Res> implements $TechnologyCopyCopyWith<$Res> {
  factory _$TechnologyCopyCopyWith(_TechnologyCopy value, $Res Function(_TechnologyCopy) _then) = __$TechnologyCopyCopyWithImpl;
@override @useResult
$Res call({
 String label, String name, String summary, String description, List<String> advantages, List<String> tradeOffs, List<String> recommendedWhen, List<String> avoidWhen, List<String> worksWellWith
});




}
/// @nodoc
class __$TechnologyCopyCopyWithImpl<$Res>
    implements _$TechnologyCopyCopyWith<$Res> {
  __$TechnologyCopyCopyWithImpl(this._self, this._then);

  final _TechnologyCopy _self;
  final $Res Function(_TechnologyCopy) _then;

/// Create a copy of TechnologyCopy
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? name = null,Object? summary = null,Object? description = null,Object? advantages = null,Object? tradeOffs = null,Object? recommendedWhen = null,Object? avoidWhen = null,Object? worksWellWith = null,}) {
  return _then(_TechnologyCopy(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,advantages: null == advantages ? _self.advantages : advantages // ignore: cast_nullable_to_non_nullable
as List<String>,tradeOffs: null == tradeOffs ? _self.tradeOffs : tradeOffs // ignore: cast_nullable_to_non_nullable
as List<String>,recommendedWhen: null == recommendedWhen ? _self.recommendedWhen : recommendedWhen // ignore: cast_nullable_to_non_nullable
as List<String>,avoidWhen: null == avoidWhen ? _self.avoidWhen : avoidWhen // ignore: cast_nullable_to_non_nullable
as List<String>,worksWellWith: null == worksWellWith ? _self.worksWellWith : worksWellWith // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$LocalizedTechnologyCopy {

 TechnologyCopy get en; TechnologyCopy get zh; TechnologyCopy get ja;
/// Create a copy of LocalizedTechnologyCopy
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocalizedTechnologyCopyCopyWith<LocalizedTechnologyCopy> get copyWith => _$LocalizedTechnologyCopyCopyWithImpl<LocalizedTechnologyCopy>(this as LocalizedTechnologyCopy, _$identity);

  /// Serializes this LocalizedTechnologyCopy to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalizedTechnologyCopy&&(identical(other.en, en) || other.en == en)&&(identical(other.zh, zh) || other.zh == zh)&&(identical(other.ja, ja) || other.ja == ja));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,en,zh,ja);

@override
String toString() {
  return 'LocalizedTechnologyCopy(en: $en, zh: $zh, ja: $ja)';
}


}

/// @nodoc
abstract mixin class $LocalizedTechnologyCopyCopyWith<$Res>  {
  factory $LocalizedTechnologyCopyCopyWith(LocalizedTechnologyCopy value, $Res Function(LocalizedTechnologyCopy) _then) = _$LocalizedTechnologyCopyCopyWithImpl;
@useResult
$Res call({
 TechnologyCopy en, TechnologyCopy zh, TechnologyCopy ja
});


$TechnologyCopyCopyWith<$Res> get en;$TechnologyCopyCopyWith<$Res> get zh;$TechnologyCopyCopyWith<$Res> get ja;

}
/// @nodoc
class _$LocalizedTechnologyCopyCopyWithImpl<$Res>
    implements $LocalizedTechnologyCopyCopyWith<$Res> {
  _$LocalizedTechnologyCopyCopyWithImpl(this._self, this._then);

  final LocalizedTechnologyCopy _self;
  final $Res Function(LocalizedTechnologyCopy) _then;

/// Create a copy of LocalizedTechnologyCopy
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? en = null,Object? zh = null,Object? ja = null,}) {
  return _then(_self.copyWith(
en: null == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as TechnologyCopy,zh: null == zh ? _self.zh : zh // ignore: cast_nullable_to_non_nullable
as TechnologyCopy,ja: null == ja ? _self.ja : ja // ignore: cast_nullable_to_non_nullable
as TechnologyCopy,
  ));
}
/// Create a copy of LocalizedTechnologyCopy
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TechnologyCopyCopyWith<$Res> get en {
  
  return $TechnologyCopyCopyWith<$Res>(_self.en, (value) {
    return _then(_self.copyWith(en: value));
  });
}/// Create a copy of LocalizedTechnologyCopy
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TechnologyCopyCopyWith<$Res> get zh {
  
  return $TechnologyCopyCopyWith<$Res>(_self.zh, (value) {
    return _then(_self.copyWith(zh: value));
  });
}/// Create a copy of LocalizedTechnologyCopy
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TechnologyCopyCopyWith<$Res> get ja {
  
  return $TechnologyCopyCopyWith<$Res>(_self.ja, (value) {
    return _then(_self.copyWith(ja: value));
  });
}
}


/// Adds pattern-matching-related methods to [LocalizedTechnologyCopy].
extension LocalizedTechnologyCopyPatterns on LocalizedTechnologyCopy {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocalizedTechnologyCopy value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocalizedTechnologyCopy() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocalizedTechnologyCopy value)  $default,){
final _that = this;
switch (_that) {
case _LocalizedTechnologyCopy():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocalizedTechnologyCopy value)?  $default,){
final _that = this;
switch (_that) {
case _LocalizedTechnologyCopy() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TechnologyCopy en,  TechnologyCopy zh,  TechnologyCopy ja)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocalizedTechnologyCopy() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TechnologyCopy en,  TechnologyCopy zh,  TechnologyCopy ja)  $default,) {final _that = this;
switch (_that) {
case _LocalizedTechnologyCopy():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TechnologyCopy en,  TechnologyCopy zh,  TechnologyCopy ja)?  $default,) {final _that = this;
switch (_that) {
case _LocalizedTechnologyCopy() when $default != null:
return $default(_that.en,_that.zh,_that.ja);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LocalizedTechnologyCopy extends LocalizedTechnologyCopy {
  const _LocalizedTechnologyCopy({required this.en, required this.zh, required this.ja}): super._();
  factory _LocalizedTechnologyCopy.fromJson(Map<String, dynamic> json) => _$LocalizedTechnologyCopyFromJson(json);

@override final  TechnologyCopy en;
@override final  TechnologyCopy zh;
@override final  TechnologyCopy ja;

/// Create a copy of LocalizedTechnologyCopy
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocalizedTechnologyCopyCopyWith<_LocalizedTechnologyCopy> get copyWith => __$LocalizedTechnologyCopyCopyWithImpl<_LocalizedTechnologyCopy>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocalizedTechnologyCopyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocalizedTechnologyCopy&&(identical(other.en, en) || other.en == en)&&(identical(other.zh, zh) || other.zh == zh)&&(identical(other.ja, ja) || other.ja == ja));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,en,zh,ja);

@override
String toString() {
  return 'LocalizedTechnologyCopy(en: $en, zh: $zh, ja: $ja)';
}


}

/// @nodoc
abstract mixin class _$LocalizedTechnologyCopyCopyWith<$Res> implements $LocalizedTechnologyCopyCopyWith<$Res> {
  factory _$LocalizedTechnologyCopyCopyWith(_LocalizedTechnologyCopy value, $Res Function(_LocalizedTechnologyCopy) _then) = __$LocalizedTechnologyCopyCopyWithImpl;
@override @useResult
$Res call({
 TechnologyCopy en, TechnologyCopy zh, TechnologyCopy ja
});


@override $TechnologyCopyCopyWith<$Res> get en;@override $TechnologyCopyCopyWith<$Res> get zh;@override $TechnologyCopyCopyWith<$Res> get ja;

}
/// @nodoc
class __$LocalizedTechnologyCopyCopyWithImpl<$Res>
    implements _$LocalizedTechnologyCopyCopyWith<$Res> {
  __$LocalizedTechnologyCopyCopyWithImpl(this._self, this._then);

  final _LocalizedTechnologyCopy _self;
  final $Res Function(_LocalizedTechnologyCopy) _then;

/// Create a copy of LocalizedTechnologyCopy
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? en = null,Object? zh = null,Object? ja = null,}) {
  return _then(_LocalizedTechnologyCopy(
en: null == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as TechnologyCopy,zh: null == zh ? _self.zh : zh // ignore: cast_nullable_to_non_nullable
as TechnologyCopy,ja: null == ja ? _self.ja : ja // ignore: cast_nullable_to_non_nullable
as TechnologyCopy,
  ));
}

/// Create a copy of LocalizedTechnologyCopy
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TechnologyCopyCopyWith<$Res> get en {
  
  return $TechnologyCopyCopyWith<$Res>(_self.en, (value) {
    return _then(_self.copyWith(en: value));
  });
}/// Create a copy of LocalizedTechnologyCopy
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TechnologyCopyCopyWith<$Res> get zh {
  
  return $TechnologyCopyCopyWith<$Res>(_self.zh, (value) {
    return _then(_self.copyWith(zh: value));
  });
}/// Create a copy of LocalizedTechnologyCopy
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TechnologyCopyCopyWith<$Res> get ja {
  
  return $TechnologyCopyCopyWith<$Res>(_self.ja, (value) {
    return _then(_self.copyWith(ja: value));
  });
}
}


/// @nodoc
mixin _$Technology {

 String get id; String get category; TechnologyKind get kind; String? get packageName; List<String> get impliedPackages; String get docsUrl; String get verifiedAt; List<KnowledgeSource> get sources; List<String> get facts; LocalizedTechnologyCopy get copy;
/// Create a copy of Technology
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TechnologyCopyWith<Technology> get copyWith => _$TechnologyCopyWithImpl<Technology>(this as Technology, _$identity);

  /// Serializes this Technology to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Technology&&(identical(other.id, id) || other.id == id)&&(identical(other.category, category) || other.category == category)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.packageName, packageName) || other.packageName == packageName)&&const DeepCollectionEquality().equals(other.impliedPackages, impliedPackages)&&(identical(other.docsUrl, docsUrl) || other.docsUrl == docsUrl)&&(identical(other.verifiedAt, verifiedAt) || other.verifiedAt == verifiedAt)&&const DeepCollectionEquality().equals(other.sources, sources)&&const DeepCollectionEquality().equals(other.facts, facts)&&(identical(other.copy, copy) || other.copy == copy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,category,kind,packageName,const DeepCollectionEquality().hash(impliedPackages),docsUrl,verifiedAt,const DeepCollectionEquality().hash(sources),const DeepCollectionEquality().hash(facts),copy);

@override
String toString() {
  return 'Technology(id: $id, category: $category, kind: $kind, packageName: $packageName, impliedPackages: $impliedPackages, docsUrl: $docsUrl, verifiedAt: $verifiedAt, sources: $sources, facts: $facts, copy: $copy)';
}


}

/// @nodoc
abstract mixin class $TechnologyCopyWith<$Res>  {
  factory $TechnologyCopyWith(Technology value, $Res Function(Technology) _then) = _$TechnologyCopyWithImpl;
@useResult
$Res call({
 String id, String category, TechnologyKind kind, String? packageName, List<String> impliedPackages, String docsUrl, String verifiedAt, List<KnowledgeSource> sources, List<String> facts, LocalizedTechnologyCopy copy
});


$LocalizedTechnologyCopyCopyWith<$Res> get copy;

}
/// @nodoc
class _$TechnologyCopyWithImpl<$Res>
    implements $TechnologyCopyWith<$Res> {
  _$TechnologyCopyWithImpl(this._self, this._then);

  final Technology _self;
  final $Res Function(Technology) _then;

/// Create a copy of Technology
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? category = null,Object? kind = null,Object? packageName = freezed,Object? impliedPackages = null,Object? docsUrl = null,Object? verifiedAt = null,Object? sources = null,Object? facts = null,Object? copy = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as TechnologyKind,packageName: freezed == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String?,impliedPackages: null == impliedPackages ? _self.impliedPackages : impliedPackages // ignore: cast_nullable_to_non_nullable
as List<String>,docsUrl: null == docsUrl ? _self.docsUrl : docsUrl // ignore: cast_nullable_to_non_nullable
as String,verifiedAt: null == verifiedAt ? _self.verifiedAt : verifiedAt // ignore: cast_nullable_to_non_nullable
as String,sources: null == sources ? _self.sources : sources // ignore: cast_nullable_to_non_nullable
as List<KnowledgeSource>,facts: null == facts ? _self.facts : facts // ignore: cast_nullable_to_non_nullable
as List<String>,copy: null == copy ? _self.copy : copy // ignore: cast_nullable_to_non_nullable
as LocalizedTechnologyCopy,
  ));
}
/// Create a copy of Technology
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTechnologyCopyCopyWith<$Res> get copy {
  
  return $LocalizedTechnologyCopyCopyWith<$Res>(_self.copy, (value) {
    return _then(_self.copyWith(copy: value));
  });
}
}


/// Adds pattern-matching-related methods to [Technology].
extension TechnologyPatterns on Technology {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Technology value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Technology() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Technology value)  $default,){
final _that = this;
switch (_that) {
case _Technology():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Technology value)?  $default,){
final _that = this;
switch (_that) {
case _Technology() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String category,  TechnologyKind kind,  String? packageName,  List<String> impliedPackages,  String docsUrl,  String verifiedAt,  List<KnowledgeSource> sources,  List<String> facts,  LocalizedTechnologyCopy copy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Technology() when $default != null:
return $default(_that.id,_that.category,_that.kind,_that.packageName,_that.impliedPackages,_that.docsUrl,_that.verifiedAt,_that.sources,_that.facts,_that.copy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String category,  TechnologyKind kind,  String? packageName,  List<String> impliedPackages,  String docsUrl,  String verifiedAt,  List<KnowledgeSource> sources,  List<String> facts,  LocalizedTechnologyCopy copy)  $default,) {final _that = this;
switch (_that) {
case _Technology():
return $default(_that.id,_that.category,_that.kind,_that.packageName,_that.impliedPackages,_that.docsUrl,_that.verifiedAt,_that.sources,_that.facts,_that.copy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String category,  TechnologyKind kind,  String? packageName,  List<String> impliedPackages,  String docsUrl,  String verifiedAt,  List<KnowledgeSource> sources,  List<String> facts,  LocalizedTechnologyCopy copy)?  $default,) {final _that = this;
switch (_that) {
case _Technology() when $default != null:
return $default(_that.id,_that.category,_that.kind,_that.packageName,_that.impliedPackages,_that.docsUrl,_that.verifiedAt,_that.sources,_that.facts,_that.copy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Technology implements Technology {
  const _Technology({required this.id, required this.category, required this.kind, this.packageName, this.impliedPackages = const [], required this.docsUrl, required this.verifiedAt, required this.sources, required this.facts, required this.copy});
  factory _Technology.fromJson(Map<String, dynamic> json) => _$TechnologyFromJson(json);

@override final  String id;
@override final  String category;
@override final  TechnologyKind kind;
@override final  String? packageName;
@override@JsonKey() final  List<String> impliedPackages;
@override final  String docsUrl;
@override final  String verifiedAt;
@override final  List<KnowledgeSource> sources;
@override final  List<String> facts;
@override final  LocalizedTechnologyCopy copy;

/// Create a copy of Technology
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TechnologyCopyWith<_Technology> get copyWith => __$TechnologyCopyWithImpl<_Technology>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TechnologyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Technology&&(identical(other.id, id) || other.id == id)&&(identical(other.category, category) || other.category == category)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.packageName, packageName) || other.packageName == packageName)&&const DeepCollectionEquality().equals(other.impliedPackages, impliedPackages)&&(identical(other.docsUrl, docsUrl) || other.docsUrl == docsUrl)&&(identical(other.verifiedAt, verifiedAt) || other.verifiedAt == verifiedAt)&&const DeepCollectionEquality().equals(other.sources, sources)&&const DeepCollectionEquality().equals(other.facts, facts)&&(identical(other.copy, copy) || other.copy == copy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,category,kind,packageName,const DeepCollectionEquality().hash(impliedPackages),docsUrl,verifiedAt,const DeepCollectionEquality().hash(sources),const DeepCollectionEquality().hash(facts),copy);

@override
String toString() {
  return 'Technology(id: $id, category: $category, kind: $kind, packageName: $packageName, impliedPackages: $impliedPackages, docsUrl: $docsUrl, verifiedAt: $verifiedAt, sources: $sources, facts: $facts, copy: $copy)';
}


}

/// @nodoc
abstract mixin class _$TechnologyCopyWith<$Res> implements $TechnologyCopyWith<$Res> {
  factory _$TechnologyCopyWith(_Technology value, $Res Function(_Technology) _then) = __$TechnologyCopyWithImpl;
@override @useResult
$Res call({
 String id, String category, TechnologyKind kind, String? packageName, List<String> impliedPackages, String docsUrl, String verifiedAt, List<KnowledgeSource> sources, List<String> facts, LocalizedTechnologyCopy copy
});


@override $LocalizedTechnologyCopyCopyWith<$Res> get copy;

}
/// @nodoc
class __$TechnologyCopyWithImpl<$Res>
    implements _$TechnologyCopyWith<$Res> {
  __$TechnologyCopyWithImpl(this._self, this._then);

  final _Technology _self;
  final $Res Function(_Technology) _then;

/// Create a copy of Technology
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? category = null,Object? kind = null,Object? packageName = freezed,Object? impliedPackages = null,Object? docsUrl = null,Object? verifiedAt = null,Object? sources = null,Object? facts = null,Object? copy = null,}) {
  return _then(_Technology(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as TechnologyKind,packageName: freezed == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String?,impliedPackages: null == impliedPackages ? _self.impliedPackages : impliedPackages // ignore: cast_nullable_to_non_nullable
as List<String>,docsUrl: null == docsUrl ? _self.docsUrl : docsUrl // ignore: cast_nullable_to_non_nullable
as String,verifiedAt: null == verifiedAt ? _self.verifiedAt : verifiedAt // ignore: cast_nullable_to_non_nullable
as String,sources: null == sources ? _self.sources : sources // ignore: cast_nullable_to_non_nullable
as List<KnowledgeSource>,facts: null == facts ? _self.facts : facts // ignore: cast_nullable_to_non_nullable
as List<String>,copy: null == copy ? _self.copy : copy // ignore: cast_nullable_to_non_nullable
as LocalizedTechnologyCopy,
  ));
}

/// Create a copy of Technology
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTechnologyCopyCopyWith<$Res> get copy {
  
  return $LocalizedTechnologyCopyCopyWith<$Res>(_self.copy, (value) {
    return _then(_self.copyWith(copy: value));
  });
}
}

// dart format on
