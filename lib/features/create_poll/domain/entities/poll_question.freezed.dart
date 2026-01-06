// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poll_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PollQuestion {

 String get id; String get questionText; int get order; bool get isRequired; List<PollOption>? get options; int? get minRating; int? get maxRating;
/// Create a copy of PollQuestion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PollQuestionCopyWith<PollQuestion> get copyWith => _$PollQuestionCopyWithImpl<PollQuestion>(this as PollQuestion, _$identity);

  /// Serializes this PollQuestion to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PollQuestion&&(identical(other.id, id) || other.id == id)&&(identical(other.questionText, questionText) || other.questionText == questionText)&&(identical(other.order, order) || other.order == order)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&const DeepCollectionEquality().equals(other.options, options)&&(identical(other.minRating, minRating) || other.minRating == minRating)&&(identical(other.maxRating, maxRating) || other.maxRating == maxRating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,questionText,order,isRequired,const DeepCollectionEquality().hash(options),minRating,maxRating);

@override
String toString() {
  return 'PollQuestion(id: $id, questionText: $questionText, order: $order, isRequired: $isRequired, options: $options, minRating: $minRating, maxRating: $maxRating)';
}


}

/// @nodoc
abstract mixin class $PollQuestionCopyWith<$Res>  {
  factory $PollQuestionCopyWith(PollQuestion value, $Res Function(PollQuestion) _then) = _$PollQuestionCopyWithImpl;
@useResult
$Res call({
 String id, String questionText, int order, bool isRequired, List<PollOption>? options, int? minRating, int? maxRating
});




}
/// @nodoc
class _$PollQuestionCopyWithImpl<$Res>
    implements $PollQuestionCopyWith<$Res> {
  _$PollQuestionCopyWithImpl(this._self, this._then);

  final PollQuestion _self;
  final $Res Function(PollQuestion) _then;

/// Create a copy of PollQuestion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? questionText = null,Object? order = null,Object? isRequired = null,Object? options = freezed,Object? minRating = freezed,Object? maxRating = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,questionText: null == questionText ? _self.questionText : questionText // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,options: freezed == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<PollOption>?,minRating: freezed == minRating ? _self.minRating : minRating // ignore: cast_nullable_to_non_nullable
as int?,maxRating: freezed == maxRating ? _self.maxRating : maxRating // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PollQuestion].
extension PollQuestionPatterns on PollQuestion {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PollQuestion value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PollQuestion() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PollQuestion value)  $default,){
final _that = this;
switch (_that) {
case _PollQuestion():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PollQuestion value)?  $default,){
final _that = this;
switch (_that) {
case _PollQuestion() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String questionText,  int order,  bool isRequired,  List<PollOption>? options,  int? minRating,  int? maxRating)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PollQuestion() when $default != null:
return $default(_that.id,_that.questionText,_that.order,_that.isRequired,_that.options,_that.minRating,_that.maxRating);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String questionText,  int order,  bool isRequired,  List<PollOption>? options,  int? minRating,  int? maxRating)  $default,) {final _that = this;
switch (_that) {
case _PollQuestion():
return $default(_that.id,_that.questionText,_that.order,_that.isRequired,_that.options,_that.minRating,_that.maxRating);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String questionText,  int order,  bool isRequired,  List<PollOption>? options,  int? minRating,  int? maxRating)?  $default,) {final _that = this;
switch (_that) {
case _PollQuestion() when $default != null:
return $default(_that.id,_that.questionText,_that.order,_that.isRequired,_that.options,_that.minRating,_that.maxRating);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PollQuestion implements PollQuestion {
  const _PollQuestion({required this.id, required this.questionText, required this.order, this.isRequired = true, final  List<PollOption>? options, this.minRating, this.maxRating}): _options = options;
  factory _PollQuestion.fromJson(Map<String, dynamic> json) => _$PollQuestionFromJson(json);

@override final  String id;
@override final  String questionText;
@override final  int order;
@override@JsonKey() final  bool isRequired;
 final  List<PollOption>? _options;
@override List<PollOption>? get options {
  final value = _options;
  if (value == null) return null;
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? minRating;
@override final  int? maxRating;

/// Create a copy of PollQuestion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PollQuestionCopyWith<_PollQuestion> get copyWith => __$PollQuestionCopyWithImpl<_PollQuestion>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PollQuestionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PollQuestion&&(identical(other.id, id) || other.id == id)&&(identical(other.questionText, questionText) || other.questionText == questionText)&&(identical(other.order, order) || other.order == order)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&const DeepCollectionEquality().equals(other._options, _options)&&(identical(other.minRating, minRating) || other.minRating == minRating)&&(identical(other.maxRating, maxRating) || other.maxRating == maxRating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,questionText,order,isRequired,const DeepCollectionEquality().hash(_options),minRating,maxRating);

@override
String toString() {
  return 'PollQuestion(id: $id, questionText: $questionText, order: $order, isRequired: $isRequired, options: $options, minRating: $minRating, maxRating: $maxRating)';
}


}

/// @nodoc
abstract mixin class _$PollQuestionCopyWith<$Res> implements $PollQuestionCopyWith<$Res> {
  factory _$PollQuestionCopyWith(_PollQuestion value, $Res Function(_PollQuestion) _then) = __$PollQuestionCopyWithImpl;
@override @useResult
$Res call({
 String id, String questionText, int order, bool isRequired, List<PollOption>? options, int? minRating, int? maxRating
});




}
/// @nodoc
class __$PollQuestionCopyWithImpl<$Res>
    implements _$PollQuestionCopyWith<$Res> {
  __$PollQuestionCopyWithImpl(this._self, this._then);

  final _PollQuestion _self;
  final $Res Function(_PollQuestion) _then;

/// Create a copy of PollQuestion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? questionText = null,Object? order = null,Object? isRequired = null,Object? options = freezed,Object? minRating = freezed,Object? maxRating = freezed,}) {
  return _then(_PollQuestion(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,questionText: null == questionText ? _self.questionText : questionText // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,options: freezed == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<PollOption>?,minRating: freezed == minRating ? _self.minRating : minRating // ignore: cast_nullable_to_non_nullable
as int?,maxRating: freezed == maxRating ? _self.maxRating : maxRating // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
