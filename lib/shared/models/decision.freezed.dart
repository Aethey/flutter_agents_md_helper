// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decision.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DecisionOption {

 String get id; String get technologyId; LocalizedText get name; LocalizedText get summary; LocalizedStringList get tags; LocalizedText get reason; List<String> get implies;@DecisionConditionConverter() DecisionCondition? get recommendWhen; LocalizedStringList? get recommendBecause; bool get fallbackRecommended;@DecisionConditionConverter() DecisionCondition? get visibleWhen;
/// Create a copy of DecisionOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DecisionOptionCopyWith<DecisionOption> get copyWith => _$DecisionOptionCopyWithImpl<DecisionOption>(this as DecisionOption, _$identity);

  /// Serializes this DecisionOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DecisionOption&&(identical(other.id, id) || other.id == id)&&(identical(other.technologyId, technologyId) || other.technologyId == technologyId)&&(identical(other.name, name) || other.name == name)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.tags, tags) || other.tags == tags)&&(identical(other.reason, reason) || other.reason == reason)&&const DeepCollectionEquality().equals(other.implies, implies)&&(identical(other.recommendWhen, recommendWhen) || other.recommendWhen == recommendWhen)&&(identical(other.recommendBecause, recommendBecause) || other.recommendBecause == recommendBecause)&&(identical(other.fallbackRecommended, fallbackRecommended) || other.fallbackRecommended == fallbackRecommended)&&(identical(other.visibleWhen, visibleWhen) || other.visibleWhen == visibleWhen));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,technologyId,name,summary,tags,reason,const DeepCollectionEquality().hash(implies),recommendWhen,recommendBecause,fallbackRecommended,visibleWhen);

@override
String toString() {
  return 'DecisionOption(id: $id, technologyId: $technologyId, name: $name, summary: $summary, tags: $tags, reason: $reason, implies: $implies, recommendWhen: $recommendWhen, recommendBecause: $recommendBecause, fallbackRecommended: $fallbackRecommended, visibleWhen: $visibleWhen)';
}


}

/// @nodoc
abstract mixin class $DecisionOptionCopyWith<$Res>  {
  factory $DecisionOptionCopyWith(DecisionOption value, $Res Function(DecisionOption) _then) = _$DecisionOptionCopyWithImpl;
@useResult
$Res call({
 String id, String technologyId, LocalizedText name, LocalizedText summary, LocalizedStringList tags, LocalizedText reason, List<String> implies,@DecisionConditionConverter() DecisionCondition? recommendWhen, LocalizedStringList? recommendBecause, bool fallbackRecommended,@DecisionConditionConverter() DecisionCondition? visibleWhen
});


$LocalizedTextCopyWith<$Res> get name;$LocalizedTextCopyWith<$Res> get summary;$LocalizedStringListCopyWith<$Res> get tags;$LocalizedTextCopyWith<$Res> get reason;$DecisionConditionCopyWith<$Res>? get recommendWhen;$LocalizedStringListCopyWith<$Res>? get recommendBecause;$DecisionConditionCopyWith<$Res>? get visibleWhen;

}
/// @nodoc
class _$DecisionOptionCopyWithImpl<$Res>
    implements $DecisionOptionCopyWith<$Res> {
  _$DecisionOptionCopyWithImpl(this._self, this._then);

  final DecisionOption _self;
  final $Res Function(DecisionOption) _then;

/// Create a copy of DecisionOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? technologyId = null,Object? name = null,Object? summary = null,Object? tags = null,Object? reason = null,Object? implies = null,Object? recommendWhen = freezed,Object? recommendBecause = freezed,Object? fallbackRecommended = null,Object? visibleWhen = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,technologyId: null == technologyId ? _self.technologyId : technologyId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as LocalizedText,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as LocalizedText,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as LocalizedStringList,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as LocalizedText,implies: null == implies ? _self.implies : implies // ignore: cast_nullable_to_non_nullable
as List<String>,recommendWhen: freezed == recommendWhen ? _self.recommendWhen : recommendWhen // ignore: cast_nullable_to_non_nullable
as DecisionCondition?,recommendBecause: freezed == recommendBecause ? _self.recommendBecause : recommendBecause // ignore: cast_nullable_to_non_nullable
as LocalizedStringList?,fallbackRecommended: null == fallbackRecommended ? _self.fallbackRecommended : fallbackRecommended // ignore: cast_nullable_to_non_nullable
as bool,visibleWhen: freezed == visibleWhen ? _self.visibleWhen : visibleWhen // ignore: cast_nullable_to_non_nullable
as DecisionCondition?,
  ));
}
/// Create a copy of DecisionOption
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res> get name {
  
  return $LocalizedTextCopyWith<$Res>(_self.name, (value) {
    return _then(_self.copyWith(name: value));
  });
}/// Create a copy of DecisionOption
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res> get summary {
  
  return $LocalizedTextCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}/// Create a copy of DecisionOption
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringListCopyWith<$Res> get tags {
  
  return $LocalizedStringListCopyWith<$Res>(_self.tags, (value) {
    return _then(_self.copyWith(tags: value));
  });
}/// Create a copy of DecisionOption
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res> get reason {
  
  return $LocalizedTextCopyWith<$Res>(_self.reason, (value) {
    return _then(_self.copyWith(reason: value));
  });
}/// Create a copy of DecisionOption
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DecisionConditionCopyWith<$Res>? get recommendWhen {
    if (_self.recommendWhen == null) {
    return null;
  }

  return $DecisionConditionCopyWith<$Res>(_self.recommendWhen!, (value) {
    return _then(_self.copyWith(recommendWhen: value));
  });
}/// Create a copy of DecisionOption
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringListCopyWith<$Res>? get recommendBecause {
    if (_self.recommendBecause == null) {
    return null;
  }

  return $LocalizedStringListCopyWith<$Res>(_self.recommendBecause!, (value) {
    return _then(_self.copyWith(recommendBecause: value));
  });
}/// Create a copy of DecisionOption
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DecisionConditionCopyWith<$Res>? get visibleWhen {
    if (_self.visibleWhen == null) {
    return null;
  }

  return $DecisionConditionCopyWith<$Res>(_self.visibleWhen!, (value) {
    return _then(_self.copyWith(visibleWhen: value));
  });
}
}


/// Adds pattern-matching-related methods to [DecisionOption].
extension DecisionOptionPatterns on DecisionOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DecisionOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DecisionOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DecisionOption value)  $default,){
final _that = this;
switch (_that) {
case _DecisionOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DecisionOption value)?  $default,){
final _that = this;
switch (_that) {
case _DecisionOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String technologyId,  LocalizedText name,  LocalizedText summary,  LocalizedStringList tags,  LocalizedText reason,  List<String> implies, @DecisionConditionConverter()  DecisionCondition? recommendWhen,  LocalizedStringList? recommendBecause,  bool fallbackRecommended, @DecisionConditionConverter()  DecisionCondition? visibleWhen)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DecisionOption() when $default != null:
return $default(_that.id,_that.technologyId,_that.name,_that.summary,_that.tags,_that.reason,_that.implies,_that.recommendWhen,_that.recommendBecause,_that.fallbackRecommended,_that.visibleWhen);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String technologyId,  LocalizedText name,  LocalizedText summary,  LocalizedStringList tags,  LocalizedText reason,  List<String> implies, @DecisionConditionConverter()  DecisionCondition? recommendWhen,  LocalizedStringList? recommendBecause,  bool fallbackRecommended, @DecisionConditionConverter()  DecisionCondition? visibleWhen)  $default,) {final _that = this;
switch (_that) {
case _DecisionOption():
return $default(_that.id,_that.technologyId,_that.name,_that.summary,_that.tags,_that.reason,_that.implies,_that.recommendWhen,_that.recommendBecause,_that.fallbackRecommended,_that.visibleWhen);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String technologyId,  LocalizedText name,  LocalizedText summary,  LocalizedStringList tags,  LocalizedText reason,  List<String> implies, @DecisionConditionConverter()  DecisionCondition? recommendWhen,  LocalizedStringList? recommendBecause,  bool fallbackRecommended, @DecisionConditionConverter()  DecisionCondition? visibleWhen)?  $default,) {final _that = this;
switch (_that) {
case _DecisionOption() when $default != null:
return $default(_that.id,_that.technologyId,_that.name,_that.summary,_that.tags,_that.reason,_that.implies,_that.recommendWhen,_that.recommendBecause,_that.fallbackRecommended,_that.visibleWhen);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DecisionOption implements DecisionOption {
  const _DecisionOption({required this.id, required this.technologyId, required this.name, required this.summary, required this.tags, required this.reason, this.implies = const [], @DecisionConditionConverter() this.recommendWhen, this.recommendBecause, this.fallbackRecommended = false, @DecisionConditionConverter() this.visibleWhen});
  factory _DecisionOption.fromJson(Map<String, dynamic> json) => _$DecisionOptionFromJson(json);

@override final  String id;
@override final  String technologyId;
@override final  LocalizedText name;
@override final  LocalizedText summary;
@override final  LocalizedStringList tags;
@override final  LocalizedText reason;
@override@JsonKey() final  List<String> implies;
@override@DecisionConditionConverter() final  DecisionCondition? recommendWhen;
@override final  LocalizedStringList? recommendBecause;
@override@JsonKey() final  bool fallbackRecommended;
@override@DecisionConditionConverter() final  DecisionCondition? visibleWhen;

/// Create a copy of DecisionOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DecisionOptionCopyWith<_DecisionOption> get copyWith => __$DecisionOptionCopyWithImpl<_DecisionOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DecisionOptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DecisionOption&&(identical(other.id, id) || other.id == id)&&(identical(other.technologyId, technologyId) || other.technologyId == technologyId)&&(identical(other.name, name) || other.name == name)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.tags, tags) || other.tags == tags)&&(identical(other.reason, reason) || other.reason == reason)&&const DeepCollectionEquality().equals(other.implies, implies)&&(identical(other.recommendWhen, recommendWhen) || other.recommendWhen == recommendWhen)&&(identical(other.recommendBecause, recommendBecause) || other.recommendBecause == recommendBecause)&&(identical(other.fallbackRecommended, fallbackRecommended) || other.fallbackRecommended == fallbackRecommended)&&(identical(other.visibleWhen, visibleWhen) || other.visibleWhen == visibleWhen));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,technologyId,name,summary,tags,reason,const DeepCollectionEquality().hash(implies),recommendWhen,recommendBecause,fallbackRecommended,visibleWhen);

@override
String toString() {
  return 'DecisionOption(id: $id, technologyId: $technologyId, name: $name, summary: $summary, tags: $tags, reason: $reason, implies: $implies, recommendWhen: $recommendWhen, recommendBecause: $recommendBecause, fallbackRecommended: $fallbackRecommended, visibleWhen: $visibleWhen)';
}


}

/// @nodoc
abstract mixin class _$DecisionOptionCopyWith<$Res> implements $DecisionOptionCopyWith<$Res> {
  factory _$DecisionOptionCopyWith(_DecisionOption value, $Res Function(_DecisionOption) _then) = __$DecisionOptionCopyWithImpl;
@override @useResult
$Res call({
 String id, String technologyId, LocalizedText name, LocalizedText summary, LocalizedStringList tags, LocalizedText reason, List<String> implies,@DecisionConditionConverter() DecisionCondition? recommendWhen, LocalizedStringList? recommendBecause, bool fallbackRecommended,@DecisionConditionConverter() DecisionCondition? visibleWhen
});


@override $LocalizedTextCopyWith<$Res> get name;@override $LocalizedTextCopyWith<$Res> get summary;@override $LocalizedStringListCopyWith<$Res> get tags;@override $LocalizedTextCopyWith<$Res> get reason;@override $DecisionConditionCopyWith<$Res>? get recommendWhen;@override $LocalizedStringListCopyWith<$Res>? get recommendBecause;@override $DecisionConditionCopyWith<$Res>? get visibleWhen;

}
/// @nodoc
class __$DecisionOptionCopyWithImpl<$Res>
    implements _$DecisionOptionCopyWith<$Res> {
  __$DecisionOptionCopyWithImpl(this._self, this._then);

  final _DecisionOption _self;
  final $Res Function(_DecisionOption) _then;

/// Create a copy of DecisionOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? technologyId = null,Object? name = null,Object? summary = null,Object? tags = null,Object? reason = null,Object? implies = null,Object? recommendWhen = freezed,Object? recommendBecause = freezed,Object? fallbackRecommended = null,Object? visibleWhen = freezed,}) {
  return _then(_DecisionOption(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,technologyId: null == technologyId ? _self.technologyId : technologyId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as LocalizedText,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as LocalizedText,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as LocalizedStringList,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as LocalizedText,implies: null == implies ? _self.implies : implies // ignore: cast_nullable_to_non_nullable
as List<String>,recommendWhen: freezed == recommendWhen ? _self.recommendWhen : recommendWhen // ignore: cast_nullable_to_non_nullable
as DecisionCondition?,recommendBecause: freezed == recommendBecause ? _self.recommendBecause : recommendBecause // ignore: cast_nullable_to_non_nullable
as LocalizedStringList?,fallbackRecommended: null == fallbackRecommended ? _self.fallbackRecommended : fallbackRecommended // ignore: cast_nullable_to_non_nullable
as bool,visibleWhen: freezed == visibleWhen ? _self.visibleWhen : visibleWhen // ignore: cast_nullable_to_non_nullable
as DecisionCondition?,
  ));
}

/// Create a copy of DecisionOption
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res> get name {
  
  return $LocalizedTextCopyWith<$Res>(_self.name, (value) {
    return _then(_self.copyWith(name: value));
  });
}/// Create a copy of DecisionOption
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res> get summary {
  
  return $LocalizedTextCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}/// Create a copy of DecisionOption
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringListCopyWith<$Res> get tags {
  
  return $LocalizedStringListCopyWith<$Res>(_self.tags, (value) {
    return _then(_self.copyWith(tags: value));
  });
}/// Create a copy of DecisionOption
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res> get reason {
  
  return $LocalizedTextCopyWith<$Res>(_self.reason, (value) {
    return _then(_self.copyWith(reason: value));
  });
}/// Create a copy of DecisionOption
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DecisionConditionCopyWith<$Res>? get recommendWhen {
    if (_self.recommendWhen == null) {
    return null;
  }

  return $DecisionConditionCopyWith<$Res>(_self.recommendWhen!, (value) {
    return _then(_self.copyWith(recommendWhen: value));
  });
}/// Create a copy of DecisionOption
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringListCopyWith<$Res>? get recommendBecause {
    if (_self.recommendBecause == null) {
    return null;
  }

  return $LocalizedStringListCopyWith<$Res>(_self.recommendBecause!, (value) {
    return _then(_self.copyWith(recommendBecause: value));
  });
}/// Create a copy of DecisionOption
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DecisionConditionCopyWith<$Res>? get visibleWhen {
    if (_self.visibleWhen == null) {
    return null;
  }

  return $DecisionConditionCopyWith<$Res>(_self.visibleWhen!, (value) {
    return _then(_self.copyWith(visibleWhen: value));
  });
}
}


/// @nodoc
mixin _$Decision {

 String get id; String get groupId; String get icon; SelectionMode get selection; LocalizedText get crumb; LocalizedText get category; LocalizedText get question; LocalizedText get blurb; List<DecisionOption> get options;@DecisionConditionConverter() DecisionCondition? get visibleWhen; LocalizedText? get shownBecause;
/// Create a copy of Decision
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DecisionCopyWith<Decision> get copyWith => _$DecisionCopyWithImpl<Decision>(this as Decision, _$identity);

  /// Serializes this Decision to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Decision&&(identical(other.id, id) || other.id == id)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.selection, selection) || other.selection == selection)&&(identical(other.crumb, crumb) || other.crumb == crumb)&&(identical(other.category, category) || other.category == category)&&(identical(other.question, question) || other.question == question)&&(identical(other.blurb, blurb) || other.blurb == blurb)&&const DeepCollectionEquality().equals(other.options, options)&&(identical(other.visibleWhen, visibleWhen) || other.visibleWhen == visibleWhen)&&(identical(other.shownBecause, shownBecause) || other.shownBecause == shownBecause));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,groupId,icon,selection,crumb,category,question,blurb,const DeepCollectionEquality().hash(options),visibleWhen,shownBecause);

@override
String toString() {
  return 'Decision(id: $id, groupId: $groupId, icon: $icon, selection: $selection, crumb: $crumb, category: $category, question: $question, blurb: $blurb, options: $options, visibleWhen: $visibleWhen, shownBecause: $shownBecause)';
}


}

/// @nodoc
abstract mixin class $DecisionCopyWith<$Res>  {
  factory $DecisionCopyWith(Decision value, $Res Function(Decision) _then) = _$DecisionCopyWithImpl;
@useResult
$Res call({
 String id, String groupId, String icon, SelectionMode selection, LocalizedText crumb, LocalizedText category, LocalizedText question, LocalizedText blurb, List<DecisionOption> options,@DecisionConditionConverter() DecisionCondition? visibleWhen, LocalizedText? shownBecause
});


$LocalizedTextCopyWith<$Res> get crumb;$LocalizedTextCopyWith<$Res> get category;$LocalizedTextCopyWith<$Res> get question;$LocalizedTextCopyWith<$Res> get blurb;$DecisionConditionCopyWith<$Res>? get visibleWhen;$LocalizedTextCopyWith<$Res>? get shownBecause;

}
/// @nodoc
class _$DecisionCopyWithImpl<$Res>
    implements $DecisionCopyWith<$Res> {
  _$DecisionCopyWithImpl(this._self, this._then);

  final Decision _self;
  final $Res Function(Decision) _then;

/// Create a copy of Decision
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? groupId = null,Object? icon = null,Object? selection = null,Object? crumb = null,Object? category = null,Object? question = null,Object? blurb = null,Object? options = null,Object? visibleWhen = freezed,Object? shownBecause = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,groupId: null == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,selection: null == selection ? _self.selection : selection // ignore: cast_nullable_to_non_nullable
as SelectionMode,crumb: null == crumb ? _self.crumb : crumb // ignore: cast_nullable_to_non_nullable
as LocalizedText,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as LocalizedText,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as LocalizedText,blurb: null == blurb ? _self.blurb : blurb // ignore: cast_nullable_to_non_nullable
as LocalizedText,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<DecisionOption>,visibleWhen: freezed == visibleWhen ? _self.visibleWhen : visibleWhen // ignore: cast_nullable_to_non_nullable
as DecisionCondition?,shownBecause: freezed == shownBecause ? _self.shownBecause : shownBecause // ignore: cast_nullable_to_non_nullable
as LocalizedText?,
  ));
}
/// Create a copy of Decision
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res> get crumb {
  
  return $LocalizedTextCopyWith<$Res>(_self.crumb, (value) {
    return _then(_self.copyWith(crumb: value));
  });
}/// Create a copy of Decision
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res> get category {
  
  return $LocalizedTextCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of Decision
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res> get question {
  
  return $LocalizedTextCopyWith<$Res>(_self.question, (value) {
    return _then(_self.copyWith(question: value));
  });
}/// Create a copy of Decision
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res> get blurb {
  
  return $LocalizedTextCopyWith<$Res>(_self.blurb, (value) {
    return _then(_self.copyWith(blurb: value));
  });
}/// Create a copy of Decision
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DecisionConditionCopyWith<$Res>? get visibleWhen {
    if (_self.visibleWhen == null) {
    return null;
  }

  return $DecisionConditionCopyWith<$Res>(_self.visibleWhen!, (value) {
    return _then(_self.copyWith(visibleWhen: value));
  });
}/// Create a copy of Decision
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res>? get shownBecause {
    if (_self.shownBecause == null) {
    return null;
  }

  return $LocalizedTextCopyWith<$Res>(_self.shownBecause!, (value) {
    return _then(_self.copyWith(shownBecause: value));
  });
}
}


/// Adds pattern-matching-related methods to [Decision].
extension DecisionPatterns on Decision {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Decision value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Decision() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Decision value)  $default,){
final _that = this;
switch (_that) {
case _Decision():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Decision value)?  $default,){
final _that = this;
switch (_that) {
case _Decision() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String groupId,  String icon,  SelectionMode selection,  LocalizedText crumb,  LocalizedText category,  LocalizedText question,  LocalizedText blurb,  List<DecisionOption> options, @DecisionConditionConverter()  DecisionCondition? visibleWhen,  LocalizedText? shownBecause)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Decision() when $default != null:
return $default(_that.id,_that.groupId,_that.icon,_that.selection,_that.crumb,_that.category,_that.question,_that.blurb,_that.options,_that.visibleWhen,_that.shownBecause);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String groupId,  String icon,  SelectionMode selection,  LocalizedText crumb,  LocalizedText category,  LocalizedText question,  LocalizedText blurb,  List<DecisionOption> options, @DecisionConditionConverter()  DecisionCondition? visibleWhen,  LocalizedText? shownBecause)  $default,) {final _that = this;
switch (_that) {
case _Decision():
return $default(_that.id,_that.groupId,_that.icon,_that.selection,_that.crumb,_that.category,_that.question,_that.blurb,_that.options,_that.visibleWhen,_that.shownBecause);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String groupId,  String icon,  SelectionMode selection,  LocalizedText crumb,  LocalizedText category,  LocalizedText question,  LocalizedText blurb,  List<DecisionOption> options, @DecisionConditionConverter()  DecisionCondition? visibleWhen,  LocalizedText? shownBecause)?  $default,) {final _that = this;
switch (_that) {
case _Decision() when $default != null:
return $default(_that.id,_that.groupId,_that.icon,_that.selection,_that.crumb,_that.category,_that.question,_that.blurb,_that.options,_that.visibleWhen,_that.shownBecause);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Decision implements Decision {
  const _Decision({required this.id, required this.groupId, required this.icon, required this.selection, required this.crumb, required this.category, required this.question, required this.blurb, required this.options, @DecisionConditionConverter() this.visibleWhen, this.shownBecause});
  factory _Decision.fromJson(Map<String, dynamic> json) => _$DecisionFromJson(json);

@override final  String id;
@override final  String groupId;
@override final  String icon;
@override final  SelectionMode selection;
@override final  LocalizedText crumb;
@override final  LocalizedText category;
@override final  LocalizedText question;
@override final  LocalizedText blurb;
@override final  List<DecisionOption> options;
@override@DecisionConditionConverter() final  DecisionCondition? visibleWhen;
@override final  LocalizedText? shownBecause;

/// Create a copy of Decision
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DecisionCopyWith<_Decision> get copyWith => __$DecisionCopyWithImpl<_Decision>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DecisionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Decision&&(identical(other.id, id) || other.id == id)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.selection, selection) || other.selection == selection)&&(identical(other.crumb, crumb) || other.crumb == crumb)&&(identical(other.category, category) || other.category == category)&&(identical(other.question, question) || other.question == question)&&(identical(other.blurb, blurb) || other.blurb == blurb)&&const DeepCollectionEquality().equals(other.options, options)&&(identical(other.visibleWhen, visibleWhen) || other.visibleWhen == visibleWhen)&&(identical(other.shownBecause, shownBecause) || other.shownBecause == shownBecause));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,groupId,icon,selection,crumb,category,question,blurb,const DeepCollectionEquality().hash(options),visibleWhen,shownBecause);

@override
String toString() {
  return 'Decision(id: $id, groupId: $groupId, icon: $icon, selection: $selection, crumb: $crumb, category: $category, question: $question, blurb: $blurb, options: $options, visibleWhen: $visibleWhen, shownBecause: $shownBecause)';
}


}

/// @nodoc
abstract mixin class _$DecisionCopyWith<$Res> implements $DecisionCopyWith<$Res> {
  factory _$DecisionCopyWith(_Decision value, $Res Function(_Decision) _then) = __$DecisionCopyWithImpl;
@override @useResult
$Res call({
 String id, String groupId, String icon, SelectionMode selection, LocalizedText crumb, LocalizedText category, LocalizedText question, LocalizedText blurb, List<DecisionOption> options,@DecisionConditionConverter() DecisionCondition? visibleWhen, LocalizedText? shownBecause
});


@override $LocalizedTextCopyWith<$Res> get crumb;@override $LocalizedTextCopyWith<$Res> get category;@override $LocalizedTextCopyWith<$Res> get question;@override $LocalizedTextCopyWith<$Res> get blurb;@override $DecisionConditionCopyWith<$Res>? get visibleWhen;@override $LocalizedTextCopyWith<$Res>? get shownBecause;

}
/// @nodoc
class __$DecisionCopyWithImpl<$Res>
    implements _$DecisionCopyWith<$Res> {
  __$DecisionCopyWithImpl(this._self, this._then);

  final _Decision _self;
  final $Res Function(_Decision) _then;

/// Create a copy of Decision
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? groupId = null,Object? icon = null,Object? selection = null,Object? crumb = null,Object? category = null,Object? question = null,Object? blurb = null,Object? options = null,Object? visibleWhen = freezed,Object? shownBecause = freezed,}) {
  return _then(_Decision(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,groupId: null == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,selection: null == selection ? _self.selection : selection // ignore: cast_nullable_to_non_nullable
as SelectionMode,crumb: null == crumb ? _self.crumb : crumb // ignore: cast_nullable_to_non_nullable
as LocalizedText,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as LocalizedText,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as LocalizedText,blurb: null == blurb ? _self.blurb : blurb // ignore: cast_nullable_to_non_nullable
as LocalizedText,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<DecisionOption>,visibleWhen: freezed == visibleWhen ? _self.visibleWhen : visibleWhen // ignore: cast_nullable_to_non_nullable
as DecisionCondition?,shownBecause: freezed == shownBecause ? _self.shownBecause : shownBecause // ignore: cast_nullable_to_non_nullable
as LocalizedText?,
  ));
}

/// Create a copy of Decision
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res> get crumb {
  
  return $LocalizedTextCopyWith<$Res>(_self.crumb, (value) {
    return _then(_self.copyWith(crumb: value));
  });
}/// Create a copy of Decision
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res> get category {
  
  return $LocalizedTextCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of Decision
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res> get question {
  
  return $LocalizedTextCopyWith<$Res>(_self.question, (value) {
    return _then(_self.copyWith(question: value));
  });
}/// Create a copy of Decision
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res> get blurb {
  
  return $LocalizedTextCopyWith<$Res>(_self.blurb, (value) {
    return _then(_self.copyWith(blurb: value));
  });
}/// Create a copy of Decision
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DecisionConditionCopyWith<$Res>? get visibleWhen {
    if (_self.visibleWhen == null) {
    return null;
  }

  return $DecisionConditionCopyWith<$Res>(_self.visibleWhen!, (value) {
    return _then(_self.copyWith(visibleWhen: value));
  });
}/// Create a copy of Decision
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res>? get shownBecause {
    if (_self.shownBecause == null) {
    return null;
  }

  return $LocalizedTextCopyWith<$Res>(_self.shownBecause!, (value) {
    return _then(_self.copyWith(shownBecause: value));
  });
}
}


/// @nodoc
mixin _$DecisionGroup {

 String get id; String get icon; LocalizedText get title; List<String> get decisionIds;
/// Create a copy of DecisionGroup
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DecisionGroupCopyWith<DecisionGroup> get copyWith => _$DecisionGroupCopyWithImpl<DecisionGroup>(this as DecisionGroup, _$identity);

  /// Serializes this DecisionGroup to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DecisionGroup&&(identical(other.id, id) || other.id == id)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.decisionIds, decisionIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,icon,title,const DeepCollectionEquality().hash(decisionIds));

@override
String toString() {
  return 'DecisionGroup(id: $id, icon: $icon, title: $title, decisionIds: $decisionIds)';
}


}

/// @nodoc
abstract mixin class $DecisionGroupCopyWith<$Res>  {
  factory $DecisionGroupCopyWith(DecisionGroup value, $Res Function(DecisionGroup) _then) = _$DecisionGroupCopyWithImpl;
@useResult
$Res call({
 String id, String icon, LocalizedText title, List<String> decisionIds
});


$LocalizedTextCopyWith<$Res> get title;

}
/// @nodoc
class _$DecisionGroupCopyWithImpl<$Res>
    implements $DecisionGroupCopyWith<$Res> {
  _$DecisionGroupCopyWithImpl(this._self, this._then);

  final DecisionGroup _self;
  final $Res Function(DecisionGroup) _then;

/// Create a copy of DecisionGroup
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? icon = null,Object? title = null,Object? decisionIds = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as LocalizedText,decisionIds: null == decisionIds ? _self.decisionIds : decisionIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of DecisionGroup
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res> get title {
  
  return $LocalizedTextCopyWith<$Res>(_self.title, (value) {
    return _then(_self.copyWith(title: value));
  });
}
}


/// Adds pattern-matching-related methods to [DecisionGroup].
extension DecisionGroupPatterns on DecisionGroup {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DecisionGroup value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DecisionGroup() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DecisionGroup value)  $default,){
final _that = this;
switch (_that) {
case _DecisionGroup():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DecisionGroup value)?  $default,){
final _that = this;
switch (_that) {
case _DecisionGroup() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String icon,  LocalizedText title,  List<String> decisionIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DecisionGroup() when $default != null:
return $default(_that.id,_that.icon,_that.title,_that.decisionIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String icon,  LocalizedText title,  List<String> decisionIds)  $default,) {final _that = this;
switch (_that) {
case _DecisionGroup():
return $default(_that.id,_that.icon,_that.title,_that.decisionIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String icon,  LocalizedText title,  List<String> decisionIds)?  $default,) {final _that = this;
switch (_that) {
case _DecisionGroup() when $default != null:
return $default(_that.id,_that.icon,_that.title,_that.decisionIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DecisionGroup implements DecisionGroup {
  const _DecisionGroup({required this.id, required this.icon, required this.title, required this.decisionIds});
  factory _DecisionGroup.fromJson(Map<String, dynamic> json) => _$DecisionGroupFromJson(json);

@override final  String id;
@override final  String icon;
@override final  LocalizedText title;
@override final  List<String> decisionIds;

/// Create a copy of DecisionGroup
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DecisionGroupCopyWith<_DecisionGroup> get copyWith => __$DecisionGroupCopyWithImpl<_DecisionGroup>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DecisionGroupToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DecisionGroup&&(identical(other.id, id) || other.id == id)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.decisionIds, decisionIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,icon,title,const DeepCollectionEquality().hash(decisionIds));

@override
String toString() {
  return 'DecisionGroup(id: $id, icon: $icon, title: $title, decisionIds: $decisionIds)';
}


}

/// @nodoc
abstract mixin class _$DecisionGroupCopyWith<$Res> implements $DecisionGroupCopyWith<$Res> {
  factory _$DecisionGroupCopyWith(_DecisionGroup value, $Res Function(_DecisionGroup) _then) = __$DecisionGroupCopyWithImpl;
@override @useResult
$Res call({
 String id, String icon, LocalizedText title, List<String> decisionIds
});


@override $LocalizedTextCopyWith<$Res> get title;

}
/// @nodoc
class __$DecisionGroupCopyWithImpl<$Res>
    implements _$DecisionGroupCopyWith<$Res> {
  __$DecisionGroupCopyWithImpl(this._self, this._then);

  final _DecisionGroup _self;
  final $Res Function(_DecisionGroup) _then;

/// Create a copy of DecisionGroup
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? icon = null,Object? title = null,Object? decisionIds = null,}) {
  return _then(_DecisionGroup(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as LocalizedText,decisionIds: null == decisionIds ? _self.decisionIds : decisionIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of DecisionGroup
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res> get title {
  
  return $LocalizedTextCopyWith<$Res>(_self.title, (value) {
    return _then(_self.copyWith(title: value));
  });
}
}


/// @nodoc
mixin _$DecisionFlow {

 String get id; String get version; List<DecisionGroup> get groups; List<Decision> get decisions;
/// Create a copy of DecisionFlow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DecisionFlowCopyWith<DecisionFlow> get copyWith => _$DecisionFlowCopyWithImpl<DecisionFlow>(this as DecisionFlow, _$identity);

  /// Serializes this DecisionFlow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DecisionFlow&&(identical(other.id, id) || other.id == id)&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other.groups, groups)&&const DeepCollectionEquality().equals(other.decisions, decisions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,version,const DeepCollectionEquality().hash(groups),const DeepCollectionEquality().hash(decisions));

@override
String toString() {
  return 'DecisionFlow(id: $id, version: $version, groups: $groups, decisions: $decisions)';
}


}

/// @nodoc
abstract mixin class $DecisionFlowCopyWith<$Res>  {
  factory $DecisionFlowCopyWith(DecisionFlow value, $Res Function(DecisionFlow) _then) = _$DecisionFlowCopyWithImpl;
@useResult
$Res call({
 String id, String version, List<DecisionGroup> groups, List<Decision> decisions
});




}
/// @nodoc
class _$DecisionFlowCopyWithImpl<$Res>
    implements $DecisionFlowCopyWith<$Res> {
  _$DecisionFlowCopyWithImpl(this._self, this._then);

  final DecisionFlow _self;
  final $Res Function(DecisionFlow) _then;

/// Create a copy of DecisionFlow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? version = null,Object? groups = null,Object? decisions = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,groups: null == groups ? _self.groups : groups // ignore: cast_nullable_to_non_nullable
as List<DecisionGroup>,decisions: null == decisions ? _self.decisions : decisions // ignore: cast_nullable_to_non_nullable
as List<Decision>,
  ));
}

}


/// Adds pattern-matching-related methods to [DecisionFlow].
extension DecisionFlowPatterns on DecisionFlow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DecisionFlow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DecisionFlow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DecisionFlow value)  $default,){
final _that = this;
switch (_that) {
case _DecisionFlow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DecisionFlow value)?  $default,){
final _that = this;
switch (_that) {
case _DecisionFlow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String version,  List<DecisionGroup> groups,  List<Decision> decisions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DecisionFlow() when $default != null:
return $default(_that.id,_that.version,_that.groups,_that.decisions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String version,  List<DecisionGroup> groups,  List<Decision> decisions)  $default,) {final _that = this;
switch (_that) {
case _DecisionFlow():
return $default(_that.id,_that.version,_that.groups,_that.decisions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String version,  List<DecisionGroup> groups,  List<Decision> decisions)?  $default,) {final _that = this;
switch (_that) {
case _DecisionFlow() when $default != null:
return $default(_that.id,_that.version,_that.groups,_that.decisions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DecisionFlow extends DecisionFlow {
  const _DecisionFlow({required this.id, required this.version, required this.groups, required this.decisions}): super._();
  factory _DecisionFlow.fromJson(Map<String, dynamic> json) => _$DecisionFlowFromJson(json);

@override final  String id;
@override final  String version;
@override final  List<DecisionGroup> groups;
@override final  List<Decision> decisions;

/// Create a copy of DecisionFlow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DecisionFlowCopyWith<_DecisionFlow> get copyWith => __$DecisionFlowCopyWithImpl<_DecisionFlow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DecisionFlowToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DecisionFlow&&(identical(other.id, id) || other.id == id)&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other.groups, groups)&&const DeepCollectionEquality().equals(other.decisions, decisions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,version,const DeepCollectionEquality().hash(groups),const DeepCollectionEquality().hash(decisions));

@override
String toString() {
  return 'DecisionFlow(id: $id, version: $version, groups: $groups, decisions: $decisions)';
}


}

/// @nodoc
abstract mixin class _$DecisionFlowCopyWith<$Res> implements $DecisionFlowCopyWith<$Res> {
  factory _$DecisionFlowCopyWith(_DecisionFlow value, $Res Function(_DecisionFlow) _then) = __$DecisionFlowCopyWithImpl;
@override @useResult
$Res call({
 String id, String version, List<DecisionGroup> groups, List<Decision> decisions
});




}
/// @nodoc
class __$DecisionFlowCopyWithImpl<$Res>
    implements _$DecisionFlowCopyWith<$Res> {
  __$DecisionFlowCopyWithImpl(this._self, this._then);

  final _DecisionFlow _self;
  final $Res Function(_DecisionFlow) _then;

/// Create a copy of DecisionFlow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? version = null,Object? groups = null,Object? decisions = null,}) {
  return _then(_DecisionFlow(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,groups: null == groups ? _self.groups : groups // ignore: cast_nullable_to_non_nullable
as List<DecisionGroup>,decisions: null == decisions ? _self.decisions : decisions // ignore: cast_nullable_to_non_nullable
as List<Decision>,
  ));
}


}

// dart format on
