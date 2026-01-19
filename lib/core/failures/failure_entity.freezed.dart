// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GenericFailure implements DiagnosticableTreeMixin {

 String get message;
/// Create a copy of GenericFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenericFailureCopyWith<GenericFailure> get copyWith => _$GenericFailureCopyWithImpl<GenericFailure>(this as GenericFailure, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GenericFailure'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenericFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GenericFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class $GenericFailureCopyWith<$Res>  {
  factory $GenericFailureCopyWith(GenericFailure value, $Res Function(GenericFailure) _then) = _$GenericFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$GenericFailureCopyWithImpl<$Res>
    implements $GenericFailureCopyWith<$Res> {
  _$GenericFailureCopyWithImpl(this._self, this._then);

  final GenericFailure _self;
  final $Res Function(GenericFailure) _then;

/// Create a copy of GenericFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GenericFailure].
extension GenericFailurePatterns on GenericFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GenericFailure value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GenericFailure() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GenericFailure value)  $default,){
final _that = this;
switch (_that) {
case _GenericFailure():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GenericFailure value)?  $default,){
final _that = this;
switch (_that) {
case _GenericFailure() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GenericFailure() when $default != null:
return $default(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message)  $default,) {final _that = this;
switch (_that) {
case _GenericFailure():
return $default(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message)?  $default,) {final _that = this;
switch (_that) {
case _GenericFailure() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _GenericFailure extends GenericFailure with DiagnosticableTreeMixin {
  const _GenericFailure({required this.message}): super._();
  

@override final  String message;

/// Create a copy of GenericFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GenericFailureCopyWith<_GenericFailure> get copyWith => __$GenericFailureCopyWithImpl<_GenericFailure>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GenericFailure'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GenericFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GenericFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$GenericFailureCopyWith<$Res> implements $GenericFailureCopyWith<$Res> {
  factory _$GenericFailureCopyWith(_GenericFailure value, $Res Function(_GenericFailure) _then) = __$GenericFailureCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$GenericFailureCopyWithImpl<$Res>
    implements _$GenericFailureCopyWith<$Res> {
  __$GenericFailureCopyWithImpl(this._self, this._then);

  final _GenericFailure _self;
  final $Res Function(_GenericFailure) _then;

/// Create a copy of GenericFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_GenericFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$LocalFailure implements DiagnosticableTreeMixin {

 String get message;
/// Create a copy of LocalFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocalFailureCopyWith<LocalFailure> get copyWith => _$LocalFailureCopyWithImpl<LocalFailure>(this as LocalFailure, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LocalFailure'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LocalFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class $LocalFailureCopyWith<$Res>  {
  factory $LocalFailureCopyWith(LocalFailure value, $Res Function(LocalFailure) _then) = _$LocalFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$LocalFailureCopyWithImpl<$Res>
    implements $LocalFailureCopyWith<$Res> {
  _$LocalFailureCopyWithImpl(this._self, this._then);

  final LocalFailure _self;
  final $Res Function(LocalFailure) _then;

/// Create a copy of LocalFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LocalFailure].
extension LocalFailurePatterns on LocalFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocalFailure value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocalFailure() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocalFailure value)  $default,){
final _that = this;
switch (_that) {
case _LocalFailure():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocalFailure value)?  $default,){
final _that = this;
switch (_that) {
case _LocalFailure() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocalFailure() when $default != null:
return $default(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message)  $default,) {final _that = this;
switch (_that) {
case _LocalFailure():
return $default(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message)?  $default,) {final _that = this;
switch (_that) {
case _LocalFailure() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _LocalFailure extends LocalFailure with DiagnosticableTreeMixin {
  const _LocalFailure({required this.message}): super._();
  

@override final  String message;

/// Create a copy of LocalFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocalFailureCopyWith<_LocalFailure> get copyWith => __$LocalFailureCopyWithImpl<_LocalFailure>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LocalFailure'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocalFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LocalFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$LocalFailureCopyWith<$Res> implements $LocalFailureCopyWith<$Res> {
  factory _$LocalFailureCopyWith(_LocalFailure value, $Res Function(_LocalFailure) _then) = __$LocalFailureCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$LocalFailureCopyWithImpl<$Res>
    implements _$LocalFailureCopyWith<$Res> {
  __$LocalFailureCopyWithImpl(this._self, this._then);

  final _LocalFailure _self;
  final $Res Function(_LocalFailure) _then;

/// Create a copy of LocalFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_LocalFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$InvalidInputFailure implements DiagnosticableTreeMixin {

 String get message;
/// Create a copy of InvalidInputFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidInputFailureCopyWith<InvalidInputFailure> get copyWith => _$InvalidInputFailureCopyWithImpl<InvalidInputFailure>(this as InvalidInputFailure, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'InvalidInputFailure'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidInputFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'InvalidInputFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class $InvalidInputFailureCopyWith<$Res>  {
  factory $InvalidInputFailureCopyWith(InvalidInputFailure value, $Res Function(InvalidInputFailure) _then) = _$InvalidInputFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$InvalidInputFailureCopyWithImpl<$Res>
    implements $InvalidInputFailureCopyWith<$Res> {
  _$InvalidInputFailureCopyWithImpl(this._self, this._then);

  final InvalidInputFailure _self;
  final $Res Function(InvalidInputFailure) _then;

/// Create a copy of InvalidInputFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [InvalidInputFailure].
extension InvalidInputFailurePatterns on InvalidInputFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InvalidInputFailure value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InvalidInputFailure() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InvalidInputFailure value)  $default,){
final _that = this;
switch (_that) {
case _InvalidInputFailure():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InvalidInputFailure value)?  $default,){
final _that = this;
switch (_that) {
case _InvalidInputFailure() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InvalidInputFailure() when $default != null:
return $default(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message)  $default,) {final _that = this;
switch (_that) {
case _InvalidInputFailure():
return $default(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message)?  $default,) {final _that = this;
switch (_that) {
case _InvalidInputFailure() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _InvalidInputFailure extends InvalidInputFailure with DiagnosticableTreeMixin {
  const _InvalidInputFailure({required this.message}): super._();
  

@override final  String message;

/// Create a copy of InvalidInputFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvalidInputFailureCopyWith<_InvalidInputFailure> get copyWith => __$InvalidInputFailureCopyWithImpl<_InvalidInputFailure>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'InvalidInputFailure'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvalidInputFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'InvalidInputFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$InvalidInputFailureCopyWith<$Res> implements $InvalidInputFailureCopyWith<$Res> {
  factory _$InvalidInputFailureCopyWith(_InvalidInputFailure value, $Res Function(_InvalidInputFailure) _then) = __$InvalidInputFailureCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$InvalidInputFailureCopyWithImpl<$Res>
    implements _$InvalidInputFailureCopyWith<$Res> {
  __$InvalidInputFailureCopyWithImpl(this._self, this._then);

  final _InvalidInputFailure _self;
  final $Res Function(_InvalidInputFailure) _then;

/// Create a copy of InvalidInputFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_InvalidInputFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$GoogleAuthFailure implements DiagnosticableTreeMixin {

 String get message;
/// Create a copy of GoogleAuthFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoogleAuthFailureCopyWith<GoogleAuthFailure> get copyWith => _$GoogleAuthFailureCopyWithImpl<GoogleAuthFailure>(this as GoogleAuthFailure, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GoogleAuthFailure'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoogleAuthFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GoogleAuthFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class $GoogleAuthFailureCopyWith<$Res>  {
  factory $GoogleAuthFailureCopyWith(GoogleAuthFailure value, $Res Function(GoogleAuthFailure) _then) = _$GoogleAuthFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$GoogleAuthFailureCopyWithImpl<$Res>
    implements $GoogleAuthFailureCopyWith<$Res> {
  _$GoogleAuthFailureCopyWithImpl(this._self, this._then);

  final GoogleAuthFailure _self;
  final $Res Function(GoogleAuthFailure) _then;

/// Create a copy of GoogleAuthFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GoogleAuthFailure].
extension GoogleAuthFailurePatterns on GoogleAuthFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GoogleAuthFailure value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GoogleAuthFailure() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GoogleAuthFailure value)  $default,){
final _that = this;
switch (_that) {
case _GoogleAuthFailure():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GoogleAuthFailure value)?  $default,){
final _that = this;
switch (_that) {
case _GoogleAuthFailure() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GoogleAuthFailure() when $default != null:
return $default(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message)  $default,) {final _that = this;
switch (_that) {
case _GoogleAuthFailure():
return $default(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message)?  $default,) {final _that = this;
switch (_that) {
case _GoogleAuthFailure() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _GoogleAuthFailure extends GoogleAuthFailure with DiagnosticableTreeMixin {
  const _GoogleAuthFailure({required this.message}): super._();
  

@override final  String message;

/// Create a copy of GoogleAuthFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GoogleAuthFailureCopyWith<_GoogleAuthFailure> get copyWith => __$GoogleAuthFailureCopyWithImpl<_GoogleAuthFailure>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'GoogleAuthFailure'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GoogleAuthFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'GoogleAuthFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$GoogleAuthFailureCopyWith<$Res> implements $GoogleAuthFailureCopyWith<$Res> {
  factory _$GoogleAuthFailureCopyWith(_GoogleAuthFailure value, $Res Function(_GoogleAuthFailure) _then) = __$GoogleAuthFailureCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$GoogleAuthFailureCopyWithImpl<$Res>
    implements _$GoogleAuthFailureCopyWith<$Res> {
  __$GoogleAuthFailureCopyWithImpl(this._self, this._then);

  final _GoogleAuthFailure _self;
  final $Res Function(_GoogleAuthFailure) _then;

/// Create a copy of GoogleAuthFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_GoogleAuthFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$FirebaseAuthFailure implements DiagnosticableTreeMixin {

 String get message;
/// Create a copy of FirebaseAuthFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FirebaseAuthFailureCopyWith<FirebaseAuthFailure> get copyWith => _$FirebaseAuthFailureCopyWithImpl<FirebaseAuthFailure>(this as FirebaseAuthFailure, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FirebaseAuthFailure'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FirebaseAuthFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FirebaseAuthFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class $FirebaseAuthFailureCopyWith<$Res>  {
  factory $FirebaseAuthFailureCopyWith(FirebaseAuthFailure value, $Res Function(FirebaseAuthFailure) _then) = _$FirebaseAuthFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$FirebaseAuthFailureCopyWithImpl<$Res>
    implements $FirebaseAuthFailureCopyWith<$Res> {
  _$FirebaseAuthFailureCopyWithImpl(this._self, this._then);

  final FirebaseAuthFailure _self;
  final $Res Function(FirebaseAuthFailure) _then;

/// Create a copy of FirebaseAuthFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FirebaseAuthFailure].
extension FirebaseAuthFailurePatterns on FirebaseAuthFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FirebaseAuthFailure value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FirebaseAuthFailure() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FirebaseAuthFailure value)  $default,){
final _that = this;
switch (_that) {
case _FirebaseAuthFailure():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FirebaseAuthFailure value)?  $default,){
final _that = this;
switch (_that) {
case _FirebaseAuthFailure() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FirebaseAuthFailure() when $default != null:
return $default(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message)  $default,) {final _that = this;
switch (_that) {
case _FirebaseAuthFailure():
return $default(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message)?  $default,) {final _that = this;
switch (_that) {
case _FirebaseAuthFailure() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _FirebaseAuthFailure extends FirebaseAuthFailure with DiagnosticableTreeMixin {
  const _FirebaseAuthFailure({required this.message}): super._();
  

@override final  String message;

/// Create a copy of FirebaseAuthFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FirebaseAuthFailureCopyWith<_FirebaseAuthFailure> get copyWith => __$FirebaseAuthFailureCopyWithImpl<_FirebaseAuthFailure>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FirebaseAuthFailure'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FirebaseAuthFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FirebaseAuthFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$FirebaseAuthFailureCopyWith<$Res> implements $FirebaseAuthFailureCopyWith<$Res> {
  factory _$FirebaseAuthFailureCopyWith(_FirebaseAuthFailure value, $Res Function(_FirebaseAuthFailure) _then) = __$FirebaseAuthFailureCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$FirebaseAuthFailureCopyWithImpl<$Res>
    implements _$FirebaseAuthFailureCopyWith<$Res> {
  __$FirebaseAuthFailureCopyWithImpl(this._self, this._then);

  final _FirebaseAuthFailure _self;
  final $Res Function(_FirebaseAuthFailure) _then;

/// Create a copy of FirebaseAuthFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_FirebaseAuthFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$RemoteFailure implements DiagnosticableTreeMixin {

 String get message;
/// Create a copy of RemoteFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoteFailureCopyWith<RemoteFailure> get copyWith => _$RemoteFailureCopyWithImpl<RemoteFailure>(this as RemoteFailure, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RemoteFailure'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoteFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RemoteFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class $RemoteFailureCopyWith<$Res>  {
  factory $RemoteFailureCopyWith(RemoteFailure value, $Res Function(RemoteFailure) _then) = _$RemoteFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$RemoteFailureCopyWithImpl<$Res>
    implements $RemoteFailureCopyWith<$Res> {
  _$RemoteFailureCopyWithImpl(this._self, this._then);

  final RemoteFailure _self;
  final $Res Function(RemoteFailure) _then;

/// Create a copy of RemoteFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RemoteFailure].
extension RemoteFailurePatterns on RemoteFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RemoteFailure value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RemoteFailure() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RemoteFailure value)  $default,){
final _that = this;
switch (_that) {
case _RemoteFailure():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RemoteFailure value)?  $default,){
final _that = this;
switch (_that) {
case _RemoteFailure() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RemoteFailure() when $default != null:
return $default(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message)  $default,) {final _that = this;
switch (_that) {
case _RemoteFailure():
return $default(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message)?  $default,) {final _that = this;
switch (_that) {
case _RemoteFailure() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _RemoteFailure extends RemoteFailure with DiagnosticableTreeMixin {
  const _RemoteFailure({required this.message}): super._();
  

@override final  String message;

/// Create a copy of RemoteFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoteFailureCopyWith<_RemoteFailure> get copyWith => __$RemoteFailureCopyWithImpl<_RemoteFailure>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RemoteFailure'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoteFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RemoteFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$RemoteFailureCopyWith<$Res> implements $RemoteFailureCopyWith<$Res> {
  factory _$RemoteFailureCopyWith(_RemoteFailure value, $Res Function(_RemoteFailure) _then) = __$RemoteFailureCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$RemoteFailureCopyWithImpl<$Res>
    implements _$RemoteFailureCopyWith<$Res> {
  __$RemoteFailureCopyWithImpl(this._self, this._then);

  final _RemoteFailure _self;
  final $Res Function(_RemoteFailure) _then;

/// Create a copy of RemoteFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_RemoteFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
