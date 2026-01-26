// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppState<$T>()';
}


}

/// @nodoc
class $AppStateCopyWith<T,$Res>  {
$AppStateCopyWith(AppState<T> _, $Res Function(AppState<T>) __);
}


/// Adds pattern-matching-related methods to [AppState].
extension AppStatePatterns<T> on AppState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AppStarted<T> value)?  started,TResult Function( OnBoarding<T> value)?  showOnBoarding,TResult Function( Authenticated<T> value)?  authenticated,TResult Function( UnAuthenticated<T> value)?  unAuthenticated,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AppStarted() when started != null:
return started(_that);case OnBoarding() when showOnBoarding != null:
return showOnBoarding(_that);case Authenticated() when authenticated != null:
return authenticated(_that);case UnAuthenticated() when unAuthenticated != null:
return unAuthenticated(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AppStarted<T> value)  started,required TResult Function( OnBoarding<T> value)  showOnBoarding,required TResult Function( Authenticated<T> value)  authenticated,required TResult Function( UnAuthenticated<T> value)  unAuthenticated,}){
final _that = this;
switch (_that) {
case AppStarted():
return started(_that);case OnBoarding():
return showOnBoarding(_that);case Authenticated():
return authenticated(_that);case UnAuthenticated():
return unAuthenticated(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AppStarted<T> value)?  started,TResult? Function( OnBoarding<T> value)?  showOnBoarding,TResult? Function( Authenticated<T> value)?  authenticated,TResult? Function( UnAuthenticated<T> value)?  unAuthenticated,}){
final _that = this;
switch (_that) {
case AppStarted() when started != null:
return started(_that);case OnBoarding() when showOnBoarding != null:
return showOnBoarding(_that);case Authenticated() when authenticated != null:
return authenticated(_that);case UnAuthenticated() when unAuthenticated != null:
return unAuthenticated(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  showOnBoarding,TResult Function( T data)?  authenticated,TResult Function( Failure? faiure)?  unAuthenticated,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AppStarted() when started != null:
return started();case OnBoarding() when showOnBoarding != null:
return showOnBoarding();case Authenticated() when authenticated != null:
return authenticated(_that.data);case UnAuthenticated() when unAuthenticated != null:
return unAuthenticated(_that.faiure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  showOnBoarding,required TResult Function( T data)  authenticated,required TResult Function( Failure? faiure)  unAuthenticated,}) {final _that = this;
switch (_that) {
case AppStarted():
return started();case OnBoarding():
return showOnBoarding();case Authenticated():
return authenticated(_that.data);case UnAuthenticated():
return unAuthenticated(_that.faiure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  showOnBoarding,TResult? Function( T data)?  authenticated,TResult? Function( Failure? faiure)?  unAuthenticated,}) {final _that = this;
switch (_that) {
case AppStarted() when started != null:
return started();case OnBoarding() when showOnBoarding != null:
return showOnBoarding();case Authenticated() when authenticated != null:
return authenticated(_that.data);case UnAuthenticated() when unAuthenticated != null:
return unAuthenticated(_that.faiure);case _:
  return null;

}
}

}

/// @nodoc


class AppStarted<T> implements AppState<T> {
  const AppStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppStarted<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppState<$T>.started()';
}


}




/// @nodoc


class OnBoarding<T> implements AppState<T> {
  const OnBoarding();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnBoarding<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppState<$T>.showOnBoarding()';
}


}




/// @nodoc


class Authenticated<T> implements AppState<T> {
  const Authenticated(this.data);
  

 final  T data;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthenticatedCopyWith<T, Authenticated<T>> get copyWith => _$AuthenticatedCopyWithImpl<T, Authenticated<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Authenticated<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'AppState<$T>.authenticated(data: $data)';
}


}

/// @nodoc
abstract mixin class $AuthenticatedCopyWith<T,$Res> implements $AppStateCopyWith<T, $Res> {
  factory $AuthenticatedCopyWith(Authenticated<T> value, $Res Function(Authenticated<T>) _then) = _$AuthenticatedCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$AuthenticatedCopyWithImpl<T,$Res>
    implements $AuthenticatedCopyWith<T, $Res> {
  _$AuthenticatedCopyWithImpl(this._self, this._then);

  final Authenticated<T> _self;
  final $Res Function(Authenticated<T>) _then;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(Authenticated<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class UnAuthenticated<T> implements AppState<T> {
  const UnAuthenticated({this.faiure});
  

 final  Failure? faiure;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnAuthenticatedCopyWith<T, UnAuthenticated<T>> get copyWith => _$UnAuthenticatedCopyWithImpl<T, UnAuthenticated<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnAuthenticated<T>&&(identical(other.faiure, faiure) || other.faiure == faiure));
}


@override
int get hashCode => Object.hash(runtimeType,faiure);

@override
String toString() {
  return 'AppState<$T>.unAuthenticated(faiure: $faiure)';
}


}

/// @nodoc
abstract mixin class $UnAuthenticatedCopyWith<T,$Res> implements $AppStateCopyWith<T, $Res> {
  factory $UnAuthenticatedCopyWith(UnAuthenticated<T> value, $Res Function(UnAuthenticated<T>) _then) = _$UnAuthenticatedCopyWithImpl;
@useResult
$Res call({
 Failure? faiure
});




}
/// @nodoc
class _$UnAuthenticatedCopyWithImpl<T,$Res>
    implements $UnAuthenticatedCopyWith<T, $Res> {
  _$UnAuthenticatedCopyWithImpl(this._self, this._then);

  final UnAuthenticated<T> _self;
  final $Res Function(UnAuthenticated<T>) _then;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? faiure = freezed,}) {
  return _then(UnAuthenticated<T>(
faiure: freezed == faiure ? _self.faiure : faiure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}


}

// dart format on
