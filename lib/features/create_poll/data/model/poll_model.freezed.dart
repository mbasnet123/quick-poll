// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poll_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PollModel {

 String get id; String get title; String? get description; String get creatorId; String get creatorName; DateTime get createdAt; DateTime? get expiresAt; PollType get pollType; bool get isAnonymous; bool get allowMultipleVotes; bool get isDraft; bool get isClosed; String get question; int get totalVotes; List<String> get tags; List<PollOption> get options;
/// Create a copy of PollModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PollModelCopyWith<PollModel> get copyWith => _$PollModelCopyWithImpl<PollModel>(this as PollModel, _$identity);

  /// Serializes this PollModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PollModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.creatorId, creatorId) || other.creatorId == creatorId)&&(identical(other.creatorName, creatorName) || other.creatorName == creatorName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.pollType, pollType) || other.pollType == pollType)&&(identical(other.isAnonymous, isAnonymous) || other.isAnonymous == isAnonymous)&&(identical(other.allowMultipleVotes, allowMultipleVotes) || other.allowMultipleVotes == allowMultipleVotes)&&(identical(other.isDraft, isDraft) || other.isDraft == isDraft)&&(identical(other.isClosed, isClosed) || other.isClosed == isClosed)&&(identical(other.question, question) || other.question == question)&&(identical(other.totalVotes, totalVotes) || other.totalVotes == totalVotes)&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.options, options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,creatorId,creatorName,createdAt,expiresAt,pollType,isAnonymous,allowMultipleVotes,isDraft,isClosed,question,totalVotes,const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(options));

@override
String toString() {
  return 'PollModel(id: $id, title: $title, description: $description, creatorId: $creatorId, creatorName: $creatorName, createdAt: $createdAt, expiresAt: $expiresAt, pollType: $pollType, isAnonymous: $isAnonymous, allowMultipleVotes: $allowMultipleVotes, isDraft: $isDraft, isClosed: $isClosed, question: $question, totalVotes: $totalVotes, tags: $tags, options: $options)';
}


}

/// @nodoc
abstract mixin class $PollModelCopyWith<$Res>  {
  factory $PollModelCopyWith(PollModel value, $Res Function(PollModel) _then) = _$PollModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String? description, String creatorId, String creatorName, DateTime createdAt, DateTime? expiresAt, PollType pollType, bool isAnonymous, bool allowMultipleVotes, bool isDraft, bool isClosed, String question, int totalVotes, List<String> tags, List<PollOption> options
});




}
/// @nodoc
class _$PollModelCopyWithImpl<$Res>
    implements $PollModelCopyWith<$Res> {
  _$PollModelCopyWithImpl(this._self, this._then);

  final PollModel _self;
  final $Res Function(PollModel) _then;

/// Create a copy of PollModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = freezed,Object? creatorId = null,Object? creatorName = null,Object? createdAt = null,Object? expiresAt = freezed,Object? pollType = null,Object? isAnonymous = null,Object? allowMultipleVotes = null,Object? isDraft = null,Object? isClosed = null,Object? question = null,Object? totalVotes = null,Object? tags = null,Object? options = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,creatorId: null == creatorId ? _self.creatorId : creatorId // ignore: cast_nullable_to_non_nullable
as String,creatorName: null == creatorName ? _self.creatorName : creatorName // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,pollType: null == pollType ? _self.pollType : pollType // ignore: cast_nullable_to_non_nullable
as PollType,isAnonymous: null == isAnonymous ? _self.isAnonymous : isAnonymous // ignore: cast_nullable_to_non_nullable
as bool,allowMultipleVotes: null == allowMultipleVotes ? _self.allowMultipleVotes : allowMultipleVotes // ignore: cast_nullable_to_non_nullable
as bool,isDraft: null == isDraft ? _self.isDraft : isDraft // ignore: cast_nullable_to_non_nullable
as bool,isClosed: null == isClosed ? _self.isClosed : isClosed // ignore: cast_nullable_to_non_nullable
as bool,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,totalVotes: null == totalVotes ? _self.totalVotes : totalVotes // ignore: cast_nullable_to_non_nullable
as int,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<PollOption>,
  ));
}

}


/// Adds pattern-matching-related methods to [PollModel].
extension PollModelPatterns on PollModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PollModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PollModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PollModel value)  $default,){
final _that = this;
switch (_that) {
case _PollModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PollModel value)?  $default,){
final _that = this;
switch (_that) {
case _PollModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String? description,  String creatorId,  String creatorName,  DateTime createdAt,  DateTime? expiresAt,  PollType pollType,  bool isAnonymous,  bool allowMultipleVotes,  bool isDraft,  bool isClosed,  String question,  int totalVotes,  List<String> tags,  List<PollOption> options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PollModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.creatorId,_that.creatorName,_that.createdAt,_that.expiresAt,_that.pollType,_that.isAnonymous,_that.allowMultipleVotes,_that.isDraft,_that.isClosed,_that.question,_that.totalVotes,_that.tags,_that.options);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String? description,  String creatorId,  String creatorName,  DateTime createdAt,  DateTime? expiresAt,  PollType pollType,  bool isAnonymous,  bool allowMultipleVotes,  bool isDraft,  bool isClosed,  String question,  int totalVotes,  List<String> tags,  List<PollOption> options)  $default,) {final _that = this;
switch (_that) {
case _PollModel():
return $default(_that.id,_that.title,_that.description,_that.creatorId,_that.creatorName,_that.createdAt,_that.expiresAt,_that.pollType,_that.isAnonymous,_that.allowMultipleVotes,_that.isDraft,_that.isClosed,_that.question,_that.totalVotes,_that.tags,_that.options);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String? description,  String creatorId,  String creatorName,  DateTime createdAt,  DateTime? expiresAt,  PollType pollType,  bool isAnonymous,  bool allowMultipleVotes,  bool isDraft,  bool isClosed,  String question,  int totalVotes,  List<String> tags,  List<PollOption> options)?  $default,) {final _that = this;
switch (_that) {
case _PollModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.creatorId,_that.creatorName,_that.createdAt,_that.expiresAt,_that.pollType,_that.isAnonymous,_that.allowMultipleVotes,_that.isDraft,_that.isClosed,_that.question,_that.totalVotes,_that.tags,_that.options);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PollModel extends PollModel {
  const _PollModel({required this.id, required this.title, this.description, required this.creatorId, required this.creatorName, required this.createdAt, this.expiresAt, required this.pollType, this.isAnonymous = false, this.allowMultipleVotes = false, this.isDraft = false, this.isClosed = false, required this.question, this.totalVotes = 0, final  List<String> tags = const [], required final  List<PollOption> options}): _tags = tags,_options = options,super._();
  factory _PollModel.fromJson(Map<String, dynamic> json) => _$PollModelFromJson(json);

@override final  String id;
@override final  String title;
@override final  String? description;
@override final  String creatorId;
@override final  String creatorName;
@override final  DateTime createdAt;
@override final  DateTime? expiresAt;
@override final  PollType pollType;
@override@JsonKey() final  bool isAnonymous;
@override@JsonKey() final  bool allowMultipleVotes;
@override@JsonKey() final  bool isDraft;
@override@JsonKey() final  bool isClosed;
@override final  String question;
@override@JsonKey() final  int totalVotes;
 final  List<String> _tags;
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

 final  List<PollOption> _options;
@override List<PollOption> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


/// Create a copy of PollModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PollModelCopyWith<_PollModel> get copyWith => __$PollModelCopyWithImpl<_PollModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PollModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PollModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.creatorId, creatorId) || other.creatorId == creatorId)&&(identical(other.creatorName, creatorName) || other.creatorName == creatorName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.pollType, pollType) || other.pollType == pollType)&&(identical(other.isAnonymous, isAnonymous) || other.isAnonymous == isAnonymous)&&(identical(other.allowMultipleVotes, allowMultipleVotes) || other.allowMultipleVotes == allowMultipleVotes)&&(identical(other.isDraft, isDraft) || other.isDraft == isDraft)&&(identical(other.isClosed, isClosed) || other.isClosed == isClosed)&&(identical(other.question, question) || other.question == question)&&(identical(other.totalVotes, totalVotes) || other.totalVotes == totalVotes)&&const DeepCollectionEquality().equals(other._tags, _tags)&&const DeepCollectionEquality().equals(other._options, _options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,creatorId,creatorName,createdAt,expiresAt,pollType,isAnonymous,allowMultipleVotes,isDraft,isClosed,question,totalVotes,const DeepCollectionEquality().hash(_tags),const DeepCollectionEquality().hash(_options));

@override
String toString() {
  return 'PollModel(id: $id, title: $title, description: $description, creatorId: $creatorId, creatorName: $creatorName, createdAt: $createdAt, expiresAt: $expiresAt, pollType: $pollType, isAnonymous: $isAnonymous, allowMultipleVotes: $allowMultipleVotes, isDraft: $isDraft, isClosed: $isClosed, question: $question, totalVotes: $totalVotes, tags: $tags, options: $options)';
}


}

/// @nodoc
abstract mixin class _$PollModelCopyWith<$Res> implements $PollModelCopyWith<$Res> {
  factory _$PollModelCopyWith(_PollModel value, $Res Function(_PollModel) _then) = __$PollModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String? description, String creatorId, String creatorName, DateTime createdAt, DateTime? expiresAt, PollType pollType, bool isAnonymous, bool allowMultipleVotes, bool isDraft, bool isClosed, String question, int totalVotes, List<String> tags, List<PollOption> options
});




}
/// @nodoc
class __$PollModelCopyWithImpl<$Res>
    implements _$PollModelCopyWith<$Res> {
  __$PollModelCopyWithImpl(this._self, this._then);

  final _PollModel _self;
  final $Res Function(_PollModel) _then;

/// Create a copy of PollModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = freezed,Object? creatorId = null,Object? creatorName = null,Object? createdAt = null,Object? expiresAt = freezed,Object? pollType = null,Object? isAnonymous = null,Object? allowMultipleVotes = null,Object? isDraft = null,Object? isClosed = null,Object? question = null,Object? totalVotes = null,Object? tags = null,Object? options = null,}) {
  return _then(_PollModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,creatorId: null == creatorId ? _self.creatorId : creatorId // ignore: cast_nullable_to_non_nullable
as String,creatorName: null == creatorName ? _self.creatorName : creatorName // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,pollType: null == pollType ? _self.pollType : pollType // ignore: cast_nullable_to_non_nullable
as PollType,isAnonymous: null == isAnonymous ? _self.isAnonymous : isAnonymous // ignore: cast_nullable_to_non_nullable
as bool,allowMultipleVotes: null == allowMultipleVotes ? _self.allowMultipleVotes : allowMultipleVotes // ignore: cast_nullable_to_non_nullable
as bool,isDraft: null == isDraft ? _self.isDraft : isDraft // ignore: cast_nullable_to_non_nullable
as bool,isClosed: null == isClosed ? _self.isClosed : isClosed // ignore: cast_nullable_to_non_nullable
as bool,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,totalVotes: null == totalVotes ? _self.totalVotes : totalVotes // ignore: cast_nullable_to_non_nullable
as int,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<PollOption>,
  ));
}


}

// dart format on
