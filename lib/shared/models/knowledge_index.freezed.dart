// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'knowledge_index.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KnowledgeIndexEntry {

 String get id; String get file;
/// Create a copy of KnowledgeIndexEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KnowledgeIndexEntryCopyWith<KnowledgeIndexEntry> get copyWith => _$KnowledgeIndexEntryCopyWithImpl<KnowledgeIndexEntry>(this as KnowledgeIndexEntry, _$identity);

  /// Serializes this KnowledgeIndexEntry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KnowledgeIndexEntry&&(identical(other.id, id) || other.id == id)&&(identical(other.file, file) || other.file == file));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,file);

@override
String toString() {
  return 'KnowledgeIndexEntry(id: $id, file: $file)';
}


}

/// @nodoc
abstract mixin class $KnowledgeIndexEntryCopyWith<$Res>  {
  factory $KnowledgeIndexEntryCopyWith(KnowledgeIndexEntry value, $Res Function(KnowledgeIndexEntry) _then) = _$KnowledgeIndexEntryCopyWithImpl;
@useResult
$Res call({
 String id, String file
});




}
/// @nodoc
class _$KnowledgeIndexEntryCopyWithImpl<$Res>
    implements $KnowledgeIndexEntryCopyWith<$Res> {
  _$KnowledgeIndexEntryCopyWithImpl(this._self, this._then);

  final KnowledgeIndexEntry _self;
  final $Res Function(KnowledgeIndexEntry) _then;

/// Create a copy of KnowledgeIndexEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? file = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,file: null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [KnowledgeIndexEntry].
extension KnowledgeIndexEntryPatterns on KnowledgeIndexEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KnowledgeIndexEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KnowledgeIndexEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KnowledgeIndexEntry value)  $default,){
final _that = this;
switch (_that) {
case _KnowledgeIndexEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KnowledgeIndexEntry value)?  $default,){
final _that = this;
switch (_that) {
case _KnowledgeIndexEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String file)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KnowledgeIndexEntry() when $default != null:
return $default(_that.id,_that.file);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String file)  $default,) {final _that = this;
switch (_that) {
case _KnowledgeIndexEntry():
return $default(_that.id,_that.file);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String file)?  $default,) {final _that = this;
switch (_that) {
case _KnowledgeIndexEntry() when $default != null:
return $default(_that.id,_that.file);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KnowledgeIndexEntry implements KnowledgeIndexEntry {
  const _KnowledgeIndexEntry({required this.id, required this.file});
  factory _KnowledgeIndexEntry.fromJson(Map<String, dynamic> json) => _$KnowledgeIndexEntryFromJson(json);

@override final  String id;
@override final  String file;

/// Create a copy of KnowledgeIndexEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KnowledgeIndexEntryCopyWith<_KnowledgeIndexEntry> get copyWith => __$KnowledgeIndexEntryCopyWithImpl<_KnowledgeIndexEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KnowledgeIndexEntryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KnowledgeIndexEntry&&(identical(other.id, id) || other.id == id)&&(identical(other.file, file) || other.file == file));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,file);

@override
String toString() {
  return 'KnowledgeIndexEntry(id: $id, file: $file)';
}


}

/// @nodoc
abstract mixin class _$KnowledgeIndexEntryCopyWith<$Res> implements $KnowledgeIndexEntryCopyWith<$Res> {
  factory _$KnowledgeIndexEntryCopyWith(_KnowledgeIndexEntry value, $Res Function(_KnowledgeIndexEntry) _then) = __$KnowledgeIndexEntryCopyWithImpl;
@override @useResult
$Res call({
 String id, String file
});




}
/// @nodoc
class __$KnowledgeIndexEntryCopyWithImpl<$Res>
    implements _$KnowledgeIndexEntryCopyWith<$Res> {
  __$KnowledgeIndexEntryCopyWithImpl(this._self, this._then);

  final _KnowledgeIndexEntry _self;
  final $Res Function(_KnowledgeIndexEntry) _then;

/// Create a copy of KnowledgeIndexEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? file = null,}) {
  return _then(_KnowledgeIndexEntry(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,file: null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$KnowledgeCategory {

 String get path; List<KnowledgeIndexEntry> get entries;
/// Create a copy of KnowledgeCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KnowledgeCategoryCopyWith<KnowledgeCategory> get copyWith => _$KnowledgeCategoryCopyWithImpl<KnowledgeCategory>(this as KnowledgeCategory, _$identity);

  /// Serializes this KnowledgeCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KnowledgeCategory&&(identical(other.path, path) || other.path == path)&&const DeepCollectionEquality().equals(other.entries, entries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,path,const DeepCollectionEquality().hash(entries));

@override
String toString() {
  return 'KnowledgeCategory(path: $path, entries: $entries)';
}


}

/// @nodoc
abstract mixin class $KnowledgeCategoryCopyWith<$Res>  {
  factory $KnowledgeCategoryCopyWith(KnowledgeCategory value, $Res Function(KnowledgeCategory) _then) = _$KnowledgeCategoryCopyWithImpl;
@useResult
$Res call({
 String path, List<KnowledgeIndexEntry> entries
});




}
/// @nodoc
class _$KnowledgeCategoryCopyWithImpl<$Res>
    implements $KnowledgeCategoryCopyWith<$Res> {
  _$KnowledgeCategoryCopyWithImpl(this._self, this._then);

  final KnowledgeCategory _self;
  final $Res Function(KnowledgeCategory) _then;

/// Create a copy of KnowledgeCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? path = null,Object? entries = null,}) {
  return _then(_self.copyWith(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,entries: null == entries ? _self.entries : entries // ignore: cast_nullable_to_non_nullable
as List<KnowledgeIndexEntry>,
  ));
}

}


/// Adds pattern-matching-related methods to [KnowledgeCategory].
extension KnowledgeCategoryPatterns on KnowledgeCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KnowledgeCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KnowledgeCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KnowledgeCategory value)  $default,){
final _that = this;
switch (_that) {
case _KnowledgeCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KnowledgeCategory value)?  $default,){
final _that = this;
switch (_that) {
case _KnowledgeCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String path,  List<KnowledgeIndexEntry> entries)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KnowledgeCategory() when $default != null:
return $default(_that.path,_that.entries);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String path,  List<KnowledgeIndexEntry> entries)  $default,) {final _that = this;
switch (_that) {
case _KnowledgeCategory():
return $default(_that.path,_that.entries);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String path,  List<KnowledgeIndexEntry> entries)?  $default,) {final _that = this;
switch (_that) {
case _KnowledgeCategory() when $default != null:
return $default(_that.path,_that.entries);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KnowledgeCategory implements KnowledgeCategory {
  const _KnowledgeCategory({required this.path, required this.entries});
  factory _KnowledgeCategory.fromJson(Map<String, dynamic> json) => _$KnowledgeCategoryFromJson(json);

@override final  String path;
@override final  List<KnowledgeIndexEntry> entries;

/// Create a copy of KnowledgeCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KnowledgeCategoryCopyWith<_KnowledgeCategory> get copyWith => __$KnowledgeCategoryCopyWithImpl<_KnowledgeCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KnowledgeCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KnowledgeCategory&&(identical(other.path, path) || other.path == path)&&const DeepCollectionEquality().equals(other.entries, entries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,path,const DeepCollectionEquality().hash(entries));

@override
String toString() {
  return 'KnowledgeCategory(path: $path, entries: $entries)';
}


}

/// @nodoc
abstract mixin class _$KnowledgeCategoryCopyWith<$Res> implements $KnowledgeCategoryCopyWith<$Res> {
  factory _$KnowledgeCategoryCopyWith(_KnowledgeCategory value, $Res Function(_KnowledgeCategory) _then) = __$KnowledgeCategoryCopyWithImpl;
@override @useResult
$Res call({
 String path, List<KnowledgeIndexEntry> entries
});




}
/// @nodoc
class __$KnowledgeCategoryCopyWithImpl<$Res>
    implements _$KnowledgeCategoryCopyWith<$Res> {
  __$KnowledgeCategoryCopyWithImpl(this._self, this._then);

  final _KnowledgeCategory _self;
  final $Res Function(_KnowledgeCategory) _then;

/// Create a copy of KnowledgeCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? path = null,Object? entries = null,}) {
  return _then(_KnowledgeCategory(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,entries: null == entries ? _self.entries : entries // ignore: cast_nullable_to_non_nullable
as List<KnowledgeIndexEntry>,
  ));
}


}


/// @nodoc
mixin _$KnowledgeIndex {

 String get version; String get updatedAt; String get flow; Map<String, KnowledgeCategory> get categories;
/// Create a copy of KnowledgeIndex
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KnowledgeIndexCopyWith<KnowledgeIndex> get copyWith => _$KnowledgeIndexCopyWithImpl<KnowledgeIndex>(this as KnowledgeIndex, _$identity);

  /// Serializes this KnowledgeIndex to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KnowledgeIndex&&(identical(other.version, version) || other.version == version)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.flow, flow) || other.flow == flow)&&const DeepCollectionEquality().equals(other.categories, categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version,updatedAt,flow,const DeepCollectionEquality().hash(categories));

@override
String toString() {
  return 'KnowledgeIndex(version: $version, updatedAt: $updatedAt, flow: $flow, categories: $categories)';
}


}

/// @nodoc
abstract mixin class $KnowledgeIndexCopyWith<$Res>  {
  factory $KnowledgeIndexCopyWith(KnowledgeIndex value, $Res Function(KnowledgeIndex) _then) = _$KnowledgeIndexCopyWithImpl;
@useResult
$Res call({
 String version, String updatedAt, String flow, Map<String, KnowledgeCategory> categories
});




}
/// @nodoc
class _$KnowledgeIndexCopyWithImpl<$Res>
    implements $KnowledgeIndexCopyWith<$Res> {
  _$KnowledgeIndexCopyWithImpl(this._self, this._then);

  final KnowledgeIndex _self;
  final $Res Function(KnowledgeIndex) _then;

/// Create a copy of KnowledgeIndex
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? version = null,Object? updatedAt = null,Object? flow = null,Object? categories = null,}) {
  return _then(_self.copyWith(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,flow: null == flow ? _self.flow : flow // ignore: cast_nullable_to_non_nullable
as String,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as Map<String, KnowledgeCategory>,
  ));
}

}


/// Adds pattern-matching-related methods to [KnowledgeIndex].
extension KnowledgeIndexPatterns on KnowledgeIndex {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KnowledgeIndex value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KnowledgeIndex() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KnowledgeIndex value)  $default,){
final _that = this;
switch (_that) {
case _KnowledgeIndex():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KnowledgeIndex value)?  $default,){
final _that = this;
switch (_that) {
case _KnowledgeIndex() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String version,  String updatedAt,  String flow,  Map<String, KnowledgeCategory> categories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KnowledgeIndex() when $default != null:
return $default(_that.version,_that.updatedAt,_that.flow,_that.categories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String version,  String updatedAt,  String flow,  Map<String, KnowledgeCategory> categories)  $default,) {final _that = this;
switch (_that) {
case _KnowledgeIndex():
return $default(_that.version,_that.updatedAt,_that.flow,_that.categories);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String version,  String updatedAt,  String flow,  Map<String, KnowledgeCategory> categories)?  $default,) {final _that = this;
switch (_that) {
case _KnowledgeIndex() when $default != null:
return $default(_that.version,_that.updatedAt,_that.flow,_that.categories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KnowledgeIndex extends KnowledgeIndex {
  const _KnowledgeIndex({required this.version, required this.updatedAt, required this.flow, required this.categories}): super._();
  factory _KnowledgeIndex.fromJson(Map<String, dynamic> json) => _$KnowledgeIndexFromJson(json);

@override final  String version;
@override final  String updatedAt;
@override final  String flow;
@override final  Map<String, KnowledgeCategory> categories;

/// Create a copy of KnowledgeIndex
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KnowledgeIndexCopyWith<_KnowledgeIndex> get copyWith => __$KnowledgeIndexCopyWithImpl<_KnowledgeIndex>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KnowledgeIndexToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KnowledgeIndex&&(identical(other.version, version) || other.version == version)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.flow, flow) || other.flow == flow)&&const DeepCollectionEquality().equals(other.categories, categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version,updatedAt,flow,const DeepCollectionEquality().hash(categories));

@override
String toString() {
  return 'KnowledgeIndex(version: $version, updatedAt: $updatedAt, flow: $flow, categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$KnowledgeIndexCopyWith<$Res> implements $KnowledgeIndexCopyWith<$Res> {
  factory _$KnowledgeIndexCopyWith(_KnowledgeIndex value, $Res Function(_KnowledgeIndex) _then) = __$KnowledgeIndexCopyWithImpl;
@override @useResult
$Res call({
 String version, String updatedAt, String flow, Map<String, KnowledgeCategory> categories
});




}
/// @nodoc
class __$KnowledgeIndexCopyWithImpl<$Res>
    implements _$KnowledgeIndexCopyWith<$Res> {
  __$KnowledgeIndexCopyWithImpl(this._self, this._then);

  final _KnowledgeIndex _self;
  final $Res Function(_KnowledgeIndex) _then;

/// Create a copy of KnowledgeIndex
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? version = null,Object? updatedAt = null,Object? flow = null,Object? categories = null,}) {
  return _then(_KnowledgeIndex(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,flow: null == flow ? _self.flow : flow // ignore: cast_nullable_to_non_nullable
as String,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as Map<String, KnowledgeCategory>,
  ));
}


}

// dart format on
