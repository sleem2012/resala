// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failuers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$KFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() server,
    required TResult Function(RequestOptions? option) offline,
    required TResult Function() userNotFound,
    required TResult Function() locationDenied,
    required TResult Function() locationDisabled,
    required TResult Function() locationDeniedPermanently,
    required TResult Function() someThingWrongPleaseTryAgain,
    required TResult Function(String error) error401,
    required TResult Function(Error422Model error422model) error422,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? server,
    TResult? Function(RequestOptions? option)? offline,
    TResult? Function()? userNotFound,
    TResult? Function()? locationDenied,
    TResult? Function()? locationDisabled,
    TResult? Function()? locationDeniedPermanently,
    TResult? Function()? someThingWrongPleaseTryAgain,
    TResult? Function(String error)? error401,
    TResult? Function(Error422Model error422model)? error422,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? server,
    TResult Function(RequestOptions? option)? offline,
    TResult Function()? userNotFound,
    TResult Function()? locationDenied,
    TResult Function()? locationDisabled,
    TResult Function()? locationDeniedPermanently,
    TResult Function()? someThingWrongPleaseTryAgain,
    TResult Function(String error)? error401,
    TResult Function(Error422Model error422model)? error422,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KFailureError value) error,
    required TResult Function(KFailureServer value) server,
    required TResult Function(KFailureOffline value) offline,
    required TResult Function(KFailureUserNotFound value) userNotFound,
    required TResult Function(KFailureLocationDenied value) locationDenied,
    required TResult Function(KFailureLocationDisabled value) locationDisabled,
    required TResult Function(KFailureLocationDeniedPermanently value)
        locationDeniedPermanently,
    required TResult Function(KFailureSomeThingWrongPleaseTryAgain value)
        someThingWrongPleaseTryAgain,
    required TResult Function(KFailureError401 value) error401,
    required TResult Function(KFailureError422 value) error422,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KFailureError value)? error,
    TResult? Function(KFailureServer value)? server,
    TResult? Function(KFailureOffline value)? offline,
    TResult? Function(KFailureUserNotFound value)? userNotFound,
    TResult? Function(KFailureLocationDenied value)? locationDenied,
    TResult? Function(KFailureLocationDisabled value)? locationDisabled,
    TResult? Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult? Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
    TResult? Function(KFailureError401 value)? error401,
    TResult? Function(KFailureError422 value)? error422,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KFailureError value)? error,
    TResult Function(KFailureServer value)? server,
    TResult Function(KFailureOffline value)? offline,
    TResult Function(KFailureUserNotFound value)? userNotFound,
    TResult Function(KFailureLocationDenied value)? locationDenied,
    TResult Function(KFailureLocationDisabled value)? locationDisabled,
    TResult Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
    TResult Function(KFailureError401 value)? error401,
    TResult Function(KFailureError422 value)? error422,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KFailureCopyWith<$Res> {
  factory $KFailureCopyWith(KFailure value, $Res Function(KFailure) then) =
      _$KFailureCopyWithImpl<$Res, KFailure>;
}

/// @nodoc
class _$KFailureCopyWithImpl<$Res, $Val extends KFailure>
    implements $KFailureCopyWith<$Res> {
  _$KFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$KFailureErrorCopyWith<$Res> {
  factory _$$KFailureErrorCopyWith(
          _$KFailureError value, $Res Function(_$KFailureError) then) =
      __$$KFailureErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$KFailureErrorCopyWithImpl<$Res>
    extends _$KFailureCopyWithImpl<$Res, _$KFailureError>
    implements _$$KFailureErrorCopyWith<$Res> {
  __$$KFailureErrorCopyWithImpl(
      _$KFailureError _value, $Res Function(_$KFailureError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$KFailureError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$KFailureError implements KFailureError {
  const _$KFailureError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'KFailure.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KFailureError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KFailureErrorCopyWith<_$KFailureError> get copyWith =>
      __$$KFailureErrorCopyWithImpl<_$KFailureError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() server,
    required TResult Function(RequestOptions? option) offline,
    required TResult Function() userNotFound,
    required TResult Function() locationDenied,
    required TResult Function() locationDisabled,
    required TResult Function() locationDeniedPermanently,
    required TResult Function() someThingWrongPleaseTryAgain,
    required TResult Function(String error) error401,
    required TResult Function(Error422Model error422model) error422,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? server,
    TResult? Function(RequestOptions? option)? offline,
    TResult? Function()? userNotFound,
    TResult? Function()? locationDenied,
    TResult? Function()? locationDisabled,
    TResult? Function()? locationDeniedPermanently,
    TResult? Function()? someThingWrongPleaseTryAgain,
    TResult? Function(String error)? error401,
    TResult? Function(Error422Model error422model)? error422,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? server,
    TResult Function(RequestOptions? option)? offline,
    TResult Function()? userNotFound,
    TResult Function()? locationDenied,
    TResult Function()? locationDisabled,
    TResult Function()? locationDeniedPermanently,
    TResult Function()? someThingWrongPleaseTryAgain,
    TResult Function(String error)? error401,
    TResult Function(Error422Model error422model)? error422,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KFailureError value) error,
    required TResult Function(KFailureServer value) server,
    required TResult Function(KFailureOffline value) offline,
    required TResult Function(KFailureUserNotFound value) userNotFound,
    required TResult Function(KFailureLocationDenied value) locationDenied,
    required TResult Function(KFailureLocationDisabled value) locationDisabled,
    required TResult Function(KFailureLocationDeniedPermanently value)
        locationDeniedPermanently,
    required TResult Function(KFailureSomeThingWrongPleaseTryAgain value)
        someThingWrongPleaseTryAgain,
    required TResult Function(KFailureError401 value) error401,
    required TResult Function(KFailureError422 value) error422,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KFailureError value)? error,
    TResult? Function(KFailureServer value)? server,
    TResult? Function(KFailureOffline value)? offline,
    TResult? Function(KFailureUserNotFound value)? userNotFound,
    TResult? Function(KFailureLocationDenied value)? locationDenied,
    TResult? Function(KFailureLocationDisabled value)? locationDisabled,
    TResult? Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult? Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
    TResult? Function(KFailureError401 value)? error401,
    TResult? Function(KFailureError422 value)? error422,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KFailureError value)? error,
    TResult Function(KFailureServer value)? server,
    TResult Function(KFailureOffline value)? offline,
    TResult Function(KFailureUserNotFound value)? userNotFound,
    TResult Function(KFailureLocationDenied value)? locationDenied,
    TResult Function(KFailureLocationDisabled value)? locationDisabled,
    TResult Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
    TResult Function(KFailureError401 value)? error401,
    TResult Function(KFailureError422 value)? error422,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class KFailureError implements KFailure {
  const factory KFailureError(final String error) = _$KFailureError;

  String get error;
  @JsonKey(ignore: true)
  _$$KFailureErrorCopyWith<_$KFailureError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$KFailureServerCopyWith<$Res> {
  factory _$$KFailureServerCopyWith(
          _$KFailureServer value, $Res Function(_$KFailureServer) then) =
      __$$KFailureServerCopyWithImpl<$Res>;
}

/// @nodoc
class __$$KFailureServerCopyWithImpl<$Res>
    extends _$KFailureCopyWithImpl<$Res, _$KFailureServer>
    implements _$$KFailureServerCopyWith<$Res> {
  __$$KFailureServerCopyWithImpl(
      _$KFailureServer _value, $Res Function(_$KFailureServer) _then)
      : super(_value, _then);
}

/// @nodoc

class _$KFailureServer implements KFailureServer {
  const _$KFailureServer();

  @override
  String toString() {
    return 'KFailure.server()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$KFailureServer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() server,
    required TResult Function(RequestOptions? option) offline,
    required TResult Function() userNotFound,
    required TResult Function() locationDenied,
    required TResult Function() locationDisabled,
    required TResult Function() locationDeniedPermanently,
    required TResult Function() someThingWrongPleaseTryAgain,
    required TResult Function(String error) error401,
    required TResult Function(Error422Model error422model) error422,
  }) {
    return server();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? server,
    TResult? Function(RequestOptions? option)? offline,
    TResult? Function()? userNotFound,
    TResult? Function()? locationDenied,
    TResult? Function()? locationDisabled,
    TResult? Function()? locationDeniedPermanently,
    TResult? Function()? someThingWrongPleaseTryAgain,
    TResult? Function(String error)? error401,
    TResult? Function(Error422Model error422model)? error422,
  }) {
    return server?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? server,
    TResult Function(RequestOptions? option)? offline,
    TResult Function()? userNotFound,
    TResult Function()? locationDenied,
    TResult Function()? locationDisabled,
    TResult Function()? locationDeniedPermanently,
    TResult Function()? someThingWrongPleaseTryAgain,
    TResult Function(String error)? error401,
    TResult Function(Error422Model error422model)? error422,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KFailureError value) error,
    required TResult Function(KFailureServer value) server,
    required TResult Function(KFailureOffline value) offline,
    required TResult Function(KFailureUserNotFound value) userNotFound,
    required TResult Function(KFailureLocationDenied value) locationDenied,
    required TResult Function(KFailureLocationDisabled value) locationDisabled,
    required TResult Function(KFailureLocationDeniedPermanently value)
        locationDeniedPermanently,
    required TResult Function(KFailureSomeThingWrongPleaseTryAgain value)
        someThingWrongPleaseTryAgain,
    required TResult Function(KFailureError401 value) error401,
    required TResult Function(KFailureError422 value) error422,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KFailureError value)? error,
    TResult? Function(KFailureServer value)? server,
    TResult? Function(KFailureOffline value)? offline,
    TResult? Function(KFailureUserNotFound value)? userNotFound,
    TResult? Function(KFailureLocationDenied value)? locationDenied,
    TResult? Function(KFailureLocationDisabled value)? locationDisabled,
    TResult? Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult? Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
    TResult? Function(KFailureError401 value)? error401,
    TResult? Function(KFailureError422 value)? error422,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KFailureError value)? error,
    TResult Function(KFailureServer value)? server,
    TResult Function(KFailureOffline value)? offline,
    TResult Function(KFailureUserNotFound value)? userNotFound,
    TResult Function(KFailureLocationDenied value)? locationDenied,
    TResult Function(KFailureLocationDisabled value)? locationDisabled,
    TResult Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
    TResult Function(KFailureError401 value)? error401,
    TResult Function(KFailureError422 value)? error422,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class KFailureServer implements KFailure {
  const factory KFailureServer() = _$KFailureServer;
}

/// @nodoc
abstract class _$$KFailureOfflineCopyWith<$Res> {
  factory _$$KFailureOfflineCopyWith(
          _$KFailureOffline value, $Res Function(_$KFailureOffline) then) =
      __$$KFailureOfflineCopyWithImpl<$Res>;
  @useResult
  $Res call({RequestOptions? option});
}

/// @nodoc
class __$$KFailureOfflineCopyWithImpl<$Res>
    extends _$KFailureCopyWithImpl<$Res, _$KFailureOffline>
    implements _$$KFailureOfflineCopyWith<$Res> {
  __$$KFailureOfflineCopyWithImpl(
      _$KFailureOffline _value, $Res Function(_$KFailureOffline) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? option = freezed,
  }) {
    return _then(_$KFailureOffline(
      option: freezed == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as RequestOptions?,
    ));
  }
}

/// @nodoc

class _$KFailureOffline implements KFailureOffline {
  const _$KFailureOffline({this.option});

  @override
  final RequestOptions? option;

  @override
  String toString() {
    return 'KFailure.offline(option: $option)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KFailureOffline &&
            (identical(other.option, option) || other.option == option));
  }

  @override
  int get hashCode => Object.hash(runtimeType, option);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KFailureOfflineCopyWith<_$KFailureOffline> get copyWith =>
      __$$KFailureOfflineCopyWithImpl<_$KFailureOffline>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() server,
    required TResult Function(RequestOptions? option) offline,
    required TResult Function() userNotFound,
    required TResult Function() locationDenied,
    required TResult Function() locationDisabled,
    required TResult Function() locationDeniedPermanently,
    required TResult Function() someThingWrongPleaseTryAgain,
    required TResult Function(String error) error401,
    required TResult Function(Error422Model error422model) error422,
  }) {
    return offline(option);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? server,
    TResult? Function(RequestOptions? option)? offline,
    TResult? Function()? userNotFound,
    TResult? Function()? locationDenied,
    TResult? Function()? locationDisabled,
    TResult? Function()? locationDeniedPermanently,
    TResult? Function()? someThingWrongPleaseTryAgain,
    TResult? Function(String error)? error401,
    TResult? Function(Error422Model error422model)? error422,
  }) {
    return offline?.call(option);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? server,
    TResult Function(RequestOptions? option)? offline,
    TResult Function()? userNotFound,
    TResult Function()? locationDenied,
    TResult Function()? locationDisabled,
    TResult Function()? locationDeniedPermanently,
    TResult Function()? someThingWrongPleaseTryAgain,
    TResult Function(String error)? error401,
    TResult Function(Error422Model error422model)? error422,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline(option);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KFailureError value) error,
    required TResult Function(KFailureServer value) server,
    required TResult Function(KFailureOffline value) offline,
    required TResult Function(KFailureUserNotFound value) userNotFound,
    required TResult Function(KFailureLocationDenied value) locationDenied,
    required TResult Function(KFailureLocationDisabled value) locationDisabled,
    required TResult Function(KFailureLocationDeniedPermanently value)
        locationDeniedPermanently,
    required TResult Function(KFailureSomeThingWrongPleaseTryAgain value)
        someThingWrongPleaseTryAgain,
    required TResult Function(KFailureError401 value) error401,
    required TResult Function(KFailureError422 value) error422,
  }) {
    return offline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KFailureError value)? error,
    TResult? Function(KFailureServer value)? server,
    TResult? Function(KFailureOffline value)? offline,
    TResult? Function(KFailureUserNotFound value)? userNotFound,
    TResult? Function(KFailureLocationDenied value)? locationDenied,
    TResult? Function(KFailureLocationDisabled value)? locationDisabled,
    TResult? Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult? Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
    TResult? Function(KFailureError401 value)? error401,
    TResult? Function(KFailureError422 value)? error422,
  }) {
    return offline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KFailureError value)? error,
    TResult Function(KFailureServer value)? server,
    TResult Function(KFailureOffline value)? offline,
    TResult Function(KFailureUserNotFound value)? userNotFound,
    TResult Function(KFailureLocationDenied value)? locationDenied,
    TResult Function(KFailureLocationDisabled value)? locationDisabled,
    TResult Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
    TResult Function(KFailureError401 value)? error401,
    TResult Function(KFailureError422 value)? error422,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }
}

abstract class KFailureOffline implements KFailure {
  const factory KFailureOffline({final RequestOptions? option}) =
      _$KFailureOffline;

  RequestOptions? get option;
  @JsonKey(ignore: true)
  _$$KFailureOfflineCopyWith<_$KFailureOffline> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$KFailureUserNotFoundCopyWith<$Res> {
  factory _$$KFailureUserNotFoundCopyWith(_$KFailureUserNotFound value,
          $Res Function(_$KFailureUserNotFound) then) =
      __$$KFailureUserNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$KFailureUserNotFoundCopyWithImpl<$Res>
    extends _$KFailureCopyWithImpl<$Res, _$KFailureUserNotFound>
    implements _$$KFailureUserNotFoundCopyWith<$Res> {
  __$$KFailureUserNotFoundCopyWithImpl(_$KFailureUserNotFound _value,
      $Res Function(_$KFailureUserNotFound) _then)
      : super(_value, _then);
}

/// @nodoc

class _$KFailureUserNotFound implements KFailureUserNotFound {
  const _$KFailureUserNotFound();

  @override
  String toString() {
    return 'KFailure.userNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$KFailureUserNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() server,
    required TResult Function(RequestOptions? option) offline,
    required TResult Function() userNotFound,
    required TResult Function() locationDenied,
    required TResult Function() locationDisabled,
    required TResult Function() locationDeniedPermanently,
    required TResult Function() someThingWrongPleaseTryAgain,
    required TResult Function(String error) error401,
    required TResult Function(Error422Model error422model) error422,
  }) {
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? server,
    TResult? Function(RequestOptions? option)? offline,
    TResult? Function()? userNotFound,
    TResult? Function()? locationDenied,
    TResult? Function()? locationDisabled,
    TResult? Function()? locationDeniedPermanently,
    TResult? Function()? someThingWrongPleaseTryAgain,
    TResult? Function(String error)? error401,
    TResult? Function(Error422Model error422model)? error422,
  }) {
    return userNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? server,
    TResult Function(RequestOptions? option)? offline,
    TResult Function()? userNotFound,
    TResult Function()? locationDenied,
    TResult Function()? locationDisabled,
    TResult Function()? locationDeniedPermanently,
    TResult Function()? someThingWrongPleaseTryAgain,
    TResult Function(String error)? error401,
    TResult Function(Error422Model error422model)? error422,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KFailureError value) error,
    required TResult Function(KFailureServer value) server,
    required TResult Function(KFailureOffline value) offline,
    required TResult Function(KFailureUserNotFound value) userNotFound,
    required TResult Function(KFailureLocationDenied value) locationDenied,
    required TResult Function(KFailureLocationDisabled value) locationDisabled,
    required TResult Function(KFailureLocationDeniedPermanently value)
        locationDeniedPermanently,
    required TResult Function(KFailureSomeThingWrongPleaseTryAgain value)
        someThingWrongPleaseTryAgain,
    required TResult Function(KFailureError401 value) error401,
    required TResult Function(KFailureError422 value) error422,
  }) {
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KFailureError value)? error,
    TResult? Function(KFailureServer value)? server,
    TResult? Function(KFailureOffline value)? offline,
    TResult? Function(KFailureUserNotFound value)? userNotFound,
    TResult? Function(KFailureLocationDenied value)? locationDenied,
    TResult? Function(KFailureLocationDisabled value)? locationDisabled,
    TResult? Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult? Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
    TResult? Function(KFailureError401 value)? error401,
    TResult? Function(KFailureError422 value)? error422,
  }) {
    return userNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KFailureError value)? error,
    TResult Function(KFailureServer value)? server,
    TResult Function(KFailureOffline value)? offline,
    TResult Function(KFailureUserNotFound value)? userNotFound,
    TResult Function(KFailureLocationDenied value)? locationDenied,
    TResult Function(KFailureLocationDisabled value)? locationDisabled,
    TResult Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
    TResult Function(KFailureError401 value)? error401,
    TResult Function(KFailureError422 value)? error422,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class KFailureUserNotFound implements KFailure {
  const factory KFailureUserNotFound() = _$KFailureUserNotFound;
}

/// @nodoc
abstract class _$$KFailureLocationDeniedCopyWith<$Res> {
  factory _$$KFailureLocationDeniedCopyWith(_$KFailureLocationDenied value,
          $Res Function(_$KFailureLocationDenied) then) =
      __$$KFailureLocationDeniedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$KFailureLocationDeniedCopyWithImpl<$Res>
    extends _$KFailureCopyWithImpl<$Res, _$KFailureLocationDenied>
    implements _$$KFailureLocationDeniedCopyWith<$Res> {
  __$$KFailureLocationDeniedCopyWithImpl(_$KFailureLocationDenied _value,
      $Res Function(_$KFailureLocationDenied) _then)
      : super(_value, _then);
}

/// @nodoc

class _$KFailureLocationDenied implements KFailureLocationDenied {
  const _$KFailureLocationDenied();

  @override
  String toString() {
    return 'KFailure.locationDenied()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$KFailureLocationDenied);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() server,
    required TResult Function(RequestOptions? option) offline,
    required TResult Function() userNotFound,
    required TResult Function() locationDenied,
    required TResult Function() locationDisabled,
    required TResult Function() locationDeniedPermanently,
    required TResult Function() someThingWrongPleaseTryAgain,
    required TResult Function(String error) error401,
    required TResult Function(Error422Model error422model) error422,
  }) {
    return locationDenied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? server,
    TResult? Function(RequestOptions? option)? offline,
    TResult? Function()? userNotFound,
    TResult? Function()? locationDenied,
    TResult? Function()? locationDisabled,
    TResult? Function()? locationDeniedPermanently,
    TResult? Function()? someThingWrongPleaseTryAgain,
    TResult? Function(String error)? error401,
    TResult? Function(Error422Model error422model)? error422,
  }) {
    return locationDenied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? server,
    TResult Function(RequestOptions? option)? offline,
    TResult Function()? userNotFound,
    TResult Function()? locationDenied,
    TResult Function()? locationDisabled,
    TResult Function()? locationDeniedPermanently,
    TResult Function()? someThingWrongPleaseTryAgain,
    TResult Function(String error)? error401,
    TResult Function(Error422Model error422model)? error422,
    required TResult orElse(),
  }) {
    if (locationDenied != null) {
      return locationDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KFailureError value) error,
    required TResult Function(KFailureServer value) server,
    required TResult Function(KFailureOffline value) offline,
    required TResult Function(KFailureUserNotFound value) userNotFound,
    required TResult Function(KFailureLocationDenied value) locationDenied,
    required TResult Function(KFailureLocationDisabled value) locationDisabled,
    required TResult Function(KFailureLocationDeniedPermanently value)
        locationDeniedPermanently,
    required TResult Function(KFailureSomeThingWrongPleaseTryAgain value)
        someThingWrongPleaseTryAgain,
    required TResult Function(KFailureError401 value) error401,
    required TResult Function(KFailureError422 value) error422,
  }) {
    return locationDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KFailureError value)? error,
    TResult? Function(KFailureServer value)? server,
    TResult? Function(KFailureOffline value)? offline,
    TResult? Function(KFailureUserNotFound value)? userNotFound,
    TResult? Function(KFailureLocationDenied value)? locationDenied,
    TResult? Function(KFailureLocationDisabled value)? locationDisabled,
    TResult? Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult? Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
    TResult? Function(KFailureError401 value)? error401,
    TResult? Function(KFailureError422 value)? error422,
  }) {
    return locationDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KFailureError value)? error,
    TResult Function(KFailureServer value)? server,
    TResult Function(KFailureOffline value)? offline,
    TResult Function(KFailureUserNotFound value)? userNotFound,
    TResult Function(KFailureLocationDenied value)? locationDenied,
    TResult Function(KFailureLocationDisabled value)? locationDisabled,
    TResult Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
    TResult Function(KFailureError401 value)? error401,
    TResult Function(KFailureError422 value)? error422,
    required TResult orElse(),
  }) {
    if (locationDenied != null) {
      return locationDenied(this);
    }
    return orElse();
  }
}

abstract class KFailureLocationDenied implements KFailure {
  const factory KFailureLocationDenied() = _$KFailureLocationDenied;
}

/// @nodoc
abstract class _$$KFailureLocationDisabledCopyWith<$Res> {
  factory _$$KFailureLocationDisabledCopyWith(_$KFailureLocationDisabled value,
          $Res Function(_$KFailureLocationDisabled) then) =
      __$$KFailureLocationDisabledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$KFailureLocationDisabledCopyWithImpl<$Res>
    extends _$KFailureCopyWithImpl<$Res, _$KFailureLocationDisabled>
    implements _$$KFailureLocationDisabledCopyWith<$Res> {
  __$$KFailureLocationDisabledCopyWithImpl(_$KFailureLocationDisabled _value,
      $Res Function(_$KFailureLocationDisabled) _then)
      : super(_value, _then);
}

/// @nodoc

class _$KFailureLocationDisabled implements KFailureLocationDisabled {
  const _$KFailureLocationDisabled();

  @override
  String toString() {
    return 'KFailure.locationDisabled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KFailureLocationDisabled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() server,
    required TResult Function(RequestOptions? option) offline,
    required TResult Function() userNotFound,
    required TResult Function() locationDenied,
    required TResult Function() locationDisabled,
    required TResult Function() locationDeniedPermanently,
    required TResult Function() someThingWrongPleaseTryAgain,
    required TResult Function(String error) error401,
    required TResult Function(Error422Model error422model) error422,
  }) {
    return locationDisabled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? server,
    TResult? Function(RequestOptions? option)? offline,
    TResult? Function()? userNotFound,
    TResult? Function()? locationDenied,
    TResult? Function()? locationDisabled,
    TResult? Function()? locationDeniedPermanently,
    TResult? Function()? someThingWrongPleaseTryAgain,
    TResult? Function(String error)? error401,
    TResult? Function(Error422Model error422model)? error422,
  }) {
    return locationDisabled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? server,
    TResult Function(RequestOptions? option)? offline,
    TResult Function()? userNotFound,
    TResult Function()? locationDenied,
    TResult Function()? locationDisabled,
    TResult Function()? locationDeniedPermanently,
    TResult Function()? someThingWrongPleaseTryAgain,
    TResult Function(String error)? error401,
    TResult Function(Error422Model error422model)? error422,
    required TResult orElse(),
  }) {
    if (locationDisabled != null) {
      return locationDisabled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KFailureError value) error,
    required TResult Function(KFailureServer value) server,
    required TResult Function(KFailureOffline value) offline,
    required TResult Function(KFailureUserNotFound value) userNotFound,
    required TResult Function(KFailureLocationDenied value) locationDenied,
    required TResult Function(KFailureLocationDisabled value) locationDisabled,
    required TResult Function(KFailureLocationDeniedPermanently value)
        locationDeniedPermanently,
    required TResult Function(KFailureSomeThingWrongPleaseTryAgain value)
        someThingWrongPleaseTryAgain,
    required TResult Function(KFailureError401 value) error401,
    required TResult Function(KFailureError422 value) error422,
  }) {
    return locationDisabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KFailureError value)? error,
    TResult? Function(KFailureServer value)? server,
    TResult? Function(KFailureOffline value)? offline,
    TResult? Function(KFailureUserNotFound value)? userNotFound,
    TResult? Function(KFailureLocationDenied value)? locationDenied,
    TResult? Function(KFailureLocationDisabled value)? locationDisabled,
    TResult? Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult? Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
    TResult? Function(KFailureError401 value)? error401,
    TResult? Function(KFailureError422 value)? error422,
  }) {
    return locationDisabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KFailureError value)? error,
    TResult Function(KFailureServer value)? server,
    TResult Function(KFailureOffline value)? offline,
    TResult Function(KFailureUserNotFound value)? userNotFound,
    TResult Function(KFailureLocationDenied value)? locationDenied,
    TResult Function(KFailureLocationDisabled value)? locationDisabled,
    TResult Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
    TResult Function(KFailureError401 value)? error401,
    TResult Function(KFailureError422 value)? error422,
    required TResult orElse(),
  }) {
    if (locationDisabled != null) {
      return locationDisabled(this);
    }
    return orElse();
  }
}

abstract class KFailureLocationDisabled implements KFailure {
  const factory KFailureLocationDisabled() = _$KFailureLocationDisabled;
}

/// @nodoc
abstract class _$$KFailureLocationDeniedPermanentlyCopyWith<$Res> {
  factory _$$KFailureLocationDeniedPermanentlyCopyWith(
          _$KFailureLocationDeniedPermanently value,
          $Res Function(_$KFailureLocationDeniedPermanently) then) =
      __$$KFailureLocationDeniedPermanentlyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$KFailureLocationDeniedPermanentlyCopyWithImpl<$Res>
    extends _$KFailureCopyWithImpl<$Res, _$KFailureLocationDeniedPermanently>
    implements _$$KFailureLocationDeniedPermanentlyCopyWith<$Res> {
  __$$KFailureLocationDeniedPermanentlyCopyWithImpl(
      _$KFailureLocationDeniedPermanently _value,
      $Res Function(_$KFailureLocationDeniedPermanently) _then)
      : super(_value, _then);
}

/// @nodoc

class _$KFailureLocationDeniedPermanently
    implements KFailureLocationDeniedPermanently {
  const _$KFailureLocationDeniedPermanently();

  @override
  String toString() {
    return 'KFailure.locationDeniedPermanently()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KFailureLocationDeniedPermanently);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() server,
    required TResult Function(RequestOptions? option) offline,
    required TResult Function() userNotFound,
    required TResult Function() locationDenied,
    required TResult Function() locationDisabled,
    required TResult Function() locationDeniedPermanently,
    required TResult Function() someThingWrongPleaseTryAgain,
    required TResult Function(String error) error401,
    required TResult Function(Error422Model error422model) error422,
  }) {
    return locationDeniedPermanently();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? server,
    TResult? Function(RequestOptions? option)? offline,
    TResult? Function()? userNotFound,
    TResult? Function()? locationDenied,
    TResult? Function()? locationDisabled,
    TResult? Function()? locationDeniedPermanently,
    TResult? Function()? someThingWrongPleaseTryAgain,
    TResult? Function(String error)? error401,
    TResult? Function(Error422Model error422model)? error422,
  }) {
    return locationDeniedPermanently?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? server,
    TResult Function(RequestOptions? option)? offline,
    TResult Function()? userNotFound,
    TResult Function()? locationDenied,
    TResult Function()? locationDisabled,
    TResult Function()? locationDeniedPermanently,
    TResult Function()? someThingWrongPleaseTryAgain,
    TResult Function(String error)? error401,
    TResult Function(Error422Model error422model)? error422,
    required TResult orElse(),
  }) {
    if (locationDeniedPermanently != null) {
      return locationDeniedPermanently();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KFailureError value) error,
    required TResult Function(KFailureServer value) server,
    required TResult Function(KFailureOffline value) offline,
    required TResult Function(KFailureUserNotFound value) userNotFound,
    required TResult Function(KFailureLocationDenied value) locationDenied,
    required TResult Function(KFailureLocationDisabled value) locationDisabled,
    required TResult Function(KFailureLocationDeniedPermanently value)
        locationDeniedPermanently,
    required TResult Function(KFailureSomeThingWrongPleaseTryAgain value)
        someThingWrongPleaseTryAgain,
    required TResult Function(KFailureError401 value) error401,
    required TResult Function(KFailureError422 value) error422,
  }) {
    return locationDeniedPermanently(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KFailureError value)? error,
    TResult? Function(KFailureServer value)? server,
    TResult? Function(KFailureOffline value)? offline,
    TResult? Function(KFailureUserNotFound value)? userNotFound,
    TResult? Function(KFailureLocationDenied value)? locationDenied,
    TResult? Function(KFailureLocationDisabled value)? locationDisabled,
    TResult? Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult? Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
    TResult? Function(KFailureError401 value)? error401,
    TResult? Function(KFailureError422 value)? error422,
  }) {
    return locationDeniedPermanently?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KFailureError value)? error,
    TResult Function(KFailureServer value)? server,
    TResult Function(KFailureOffline value)? offline,
    TResult Function(KFailureUserNotFound value)? userNotFound,
    TResult Function(KFailureLocationDenied value)? locationDenied,
    TResult Function(KFailureLocationDisabled value)? locationDisabled,
    TResult Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
    TResult Function(KFailureError401 value)? error401,
    TResult Function(KFailureError422 value)? error422,
    required TResult orElse(),
  }) {
    if (locationDeniedPermanently != null) {
      return locationDeniedPermanently(this);
    }
    return orElse();
  }
}

abstract class KFailureLocationDeniedPermanently implements KFailure {
  const factory KFailureLocationDeniedPermanently() =
      _$KFailureLocationDeniedPermanently;
}

/// @nodoc
abstract class _$$KFailureSomeThingWrongPleaseTryAgainCopyWith<$Res> {
  factory _$$KFailureSomeThingWrongPleaseTryAgainCopyWith(
          _$KFailureSomeThingWrongPleaseTryAgain value,
          $Res Function(_$KFailureSomeThingWrongPleaseTryAgain) then) =
      __$$KFailureSomeThingWrongPleaseTryAgainCopyWithImpl<$Res>;
}

/// @nodoc
class __$$KFailureSomeThingWrongPleaseTryAgainCopyWithImpl<$Res>
    extends _$KFailureCopyWithImpl<$Res, _$KFailureSomeThingWrongPleaseTryAgain>
    implements _$$KFailureSomeThingWrongPleaseTryAgainCopyWith<$Res> {
  __$$KFailureSomeThingWrongPleaseTryAgainCopyWithImpl(
      _$KFailureSomeThingWrongPleaseTryAgain _value,
      $Res Function(_$KFailureSomeThingWrongPleaseTryAgain) _then)
      : super(_value, _then);
}

/// @nodoc

class _$KFailureSomeThingWrongPleaseTryAgain
    implements KFailureSomeThingWrongPleaseTryAgain {
  const _$KFailureSomeThingWrongPleaseTryAgain();

  @override
  String toString() {
    return 'KFailure.someThingWrongPleaseTryAgain()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KFailureSomeThingWrongPleaseTryAgain);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() server,
    required TResult Function(RequestOptions? option) offline,
    required TResult Function() userNotFound,
    required TResult Function() locationDenied,
    required TResult Function() locationDisabled,
    required TResult Function() locationDeniedPermanently,
    required TResult Function() someThingWrongPleaseTryAgain,
    required TResult Function(String error) error401,
    required TResult Function(Error422Model error422model) error422,
  }) {
    return someThingWrongPleaseTryAgain();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? server,
    TResult? Function(RequestOptions? option)? offline,
    TResult? Function()? userNotFound,
    TResult? Function()? locationDenied,
    TResult? Function()? locationDisabled,
    TResult? Function()? locationDeniedPermanently,
    TResult? Function()? someThingWrongPleaseTryAgain,
    TResult? Function(String error)? error401,
    TResult? Function(Error422Model error422model)? error422,
  }) {
    return someThingWrongPleaseTryAgain?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? server,
    TResult Function(RequestOptions? option)? offline,
    TResult Function()? userNotFound,
    TResult Function()? locationDenied,
    TResult Function()? locationDisabled,
    TResult Function()? locationDeniedPermanently,
    TResult Function()? someThingWrongPleaseTryAgain,
    TResult Function(String error)? error401,
    TResult Function(Error422Model error422model)? error422,
    required TResult orElse(),
  }) {
    if (someThingWrongPleaseTryAgain != null) {
      return someThingWrongPleaseTryAgain();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KFailureError value) error,
    required TResult Function(KFailureServer value) server,
    required TResult Function(KFailureOffline value) offline,
    required TResult Function(KFailureUserNotFound value) userNotFound,
    required TResult Function(KFailureLocationDenied value) locationDenied,
    required TResult Function(KFailureLocationDisabled value) locationDisabled,
    required TResult Function(KFailureLocationDeniedPermanently value)
        locationDeniedPermanently,
    required TResult Function(KFailureSomeThingWrongPleaseTryAgain value)
        someThingWrongPleaseTryAgain,
    required TResult Function(KFailureError401 value) error401,
    required TResult Function(KFailureError422 value) error422,
  }) {
    return someThingWrongPleaseTryAgain(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KFailureError value)? error,
    TResult? Function(KFailureServer value)? server,
    TResult? Function(KFailureOffline value)? offline,
    TResult? Function(KFailureUserNotFound value)? userNotFound,
    TResult? Function(KFailureLocationDenied value)? locationDenied,
    TResult? Function(KFailureLocationDisabled value)? locationDisabled,
    TResult? Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult? Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
    TResult? Function(KFailureError401 value)? error401,
    TResult? Function(KFailureError422 value)? error422,
  }) {
    return someThingWrongPleaseTryAgain?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KFailureError value)? error,
    TResult Function(KFailureServer value)? server,
    TResult Function(KFailureOffline value)? offline,
    TResult Function(KFailureUserNotFound value)? userNotFound,
    TResult Function(KFailureLocationDenied value)? locationDenied,
    TResult Function(KFailureLocationDisabled value)? locationDisabled,
    TResult Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
    TResult Function(KFailureError401 value)? error401,
    TResult Function(KFailureError422 value)? error422,
    required TResult orElse(),
  }) {
    if (someThingWrongPleaseTryAgain != null) {
      return someThingWrongPleaseTryAgain(this);
    }
    return orElse();
  }
}

abstract class KFailureSomeThingWrongPleaseTryAgain implements KFailure {
  const factory KFailureSomeThingWrongPleaseTryAgain() =
      _$KFailureSomeThingWrongPleaseTryAgain;
}

/// @nodoc
abstract class _$$KFailureError401CopyWith<$Res> {
  factory _$$KFailureError401CopyWith(
          _$KFailureError401 value, $Res Function(_$KFailureError401) then) =
      __$$KFailureError401CopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$KFailureError401CopyWithImpl<$Res>
    extends _$KFailureCopyWithImpl<$Res, _$KFailureError401>
    implements _$$KFailureError401CopyWith<$Res> {
  __$$KFailureError401CopyWithImpl(
      _$KFailureError401 _value, $Res Function(_$KFailureError401) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$KFailureError401(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$KFailureError401 implements KFailureError401 {
  const _$KFailureError401({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'KFailure.error401(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KFailureError401 &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KFailureError401CopyWith<_$KFailureError401> get copyWith =>
      __$$KFailureError401CopyWithImpl<_$KFailureError401>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() server,
    required TResult Function(RequestOptions? option) offline,
    required TResult Function() userNotFound,
    required TResult Function() locationDenied,
    required TResult Function() locationDisabled,
    required TResult Function() locationDeniedPermanently,
    required TResult Function() someThingWrongPleaseTryAgain,
    required TResult Function(String error) error401,
    required TResult Function(Error422Model error422model) error422,
  }) {
    return error401(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? server,
    TResult? Function(RequestOptions? option)? offline,
    TResult? Function()? userNotFound,
    TResult? Function()? locationDenied,
    TResult? Function()? locationDisabled,
    TResult? Function()? locationDeniedPermanently,
    TResult? Function()? someThingWrongPleaseTryAgain,
    TResult? Function(String error)? error401,
    TResult? Function(Error422Model error422model)? error422,
  }) {
    return error401?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? server,
    TResult Function(RequestOptions? option)? offline,
    TResult Function()? userNotFound,
    TResult Function()? locationDenied,
    TResult Function()? locationDisabled,
    TResult Function()? locationDeniedPermanently,
    TResult Function()? someThingWrongPleaseTryAgain,
    TResult Function(String error)? error401,
    TResult Function(Error422Model error422model)? error422,
    required TResult orElse(),
  }) {
    if (error401 != null) {
      return error401(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KFailureError value) error,
    required TResult Function(KFailureServer value) server,
    required TResult Function(KFailureOffline value) offline,
    required TResult Function(KFailureUserNotFound value) userNotFound,
    required TResult Function(KFailureLocationDenied value) locationDenied,
    required TResult Function(KFailureLocationDisabled value) locationDisabled,
    required TResult Function(KFailureLocationDeniedPermanently value)
        locationDeniedPermanently,
    required TResult Function(KFailureSomeThingWrongPleaseTryAgain value)
        someThingWrongPleaseTryAgain,
    required TResult Function(KFailureError401 value) error401,
    required TResult Function(KFailureError422 value) error422,
  }) {
    return error401(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KFailureError value)? error,
    TResult? Function(KFailureServer value)? server,
    TResult? Function(KFailureOffline value)? offline,
    TResult? Function(KFailureUserNotFound value)? userNotFound,
    TResult? Function(KFailureLocationDenied value)? locationDenied,
    TResult? Function(KFailureLocationDisabled value)? locationDisabled,
    TResult? Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult? Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
    TResult? Function(KFailureError401 value)? error401,
    TResult? Function(KFailureError422 value)? error422,
  }) {
    return error401?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KFailureError value)? error,
    TResult Function(KFailureServer value)? server,
    TResult Function(KFailureOffline value)? offline,
    TResult Function(KFailureUserNotFound value)? userNotFound,
    TResult Function(KFailureLocationDenied value)? locationDenied,
    TResult Function(KFailureLocationDisabled value)? locationDisabled,
    TResult Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
    TResult Function(KFailureError401 value)? error401,
    TResult Function(KFailureError422 value)? error422,
    required TResult orElse(),
  }) {
    if (error401 != null) {
      return error401(this);
    }
    return orElse();
  }
}

abstract class KFailureError401 implements KFailure {
  const factory KFailureError401({required final String error}) =
      _$KFailureError401;

  String get error;
  @JsonKey(ignore: true)
  _$$KFailureError401CopyWith<_$KFailureError401> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$KFailureError422CopyWith<$Res> {
  factory _$$KFailureError422CopyWith(
          _$KFailureError422 value, $Res Function(_$KFailureError422) then) =
      __$$KFailureError422CopyWithImpl<$Res>;
  @useResult
  $Res call({Error422Model error422model});
}

/// @nodoc
class __$$KFailureError422CopyWithImpl<$Res>
    extends _$KFailureCopyWithImpl<$Res, _$KFailureError422>
    implements _$$KFailureError422CopyWith<$Res> {
  __$$KFailureError422CopyWithImpl(
      _$KFailureError422 _value, $Res Function(_$KFailureError422) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error422model = null,
  }) {
    return _then(_$KFailureError422(
      error422model: null == error422model
          ? _value.error422model
          : error422model // ignore: cast_nullable_to_non_nullable
              as Error422Model,
    ));
  }
}

/// @nodoc

class _$KFailureError422 implements KFailureError422 {
  const _$KFailureError422({required this.error422model});

  @override
  final Error422Model error422model;

  @override
  String toString() {
    return 'KFailure.error422(error422model: $error422model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KFailureError422 &&
            (identical(other.error422model, error422model) ||
                other.error422model == error422model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error422model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KFailureError422CopyWith<_$KFailureError422> get copyWith =>
      __$$KFailureError422CopyWithImpl<_$KFailureError422>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() server,
    required TResult Function(RequestOptions? option) offline,
    required TResult Function() userNotFound,
    required TResult Function() locationDenied,
    required TResult Function() locationDisabled,
    required TResult Function() locationDeniedPermanently,
    required TResult Function() someThingWrongPleaseTryAgain,
    required TResult Function(String error) error401,
    required TResult Function(Error422Model error422model) error422,
  }) {
    return error422(error422model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? server,
    TResult? Function(RequestOptions? option)? offline,
    TResult? Function()? userNotFound,
    TResult? Function()? locationDenied,
    TResult? Function()? locationDisabled,
    TResult? Function()? locationDeniedPermanently,
    TResult? Function()? someThingWrongPleaseTryAgain,
    TResult? Function(String error)? error401,
    TResult? Function(Error422Model error422model)? error422,
  }) {
    return error422?.call(error422model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? server,
    TResult Function(RequestOptions? option)? offline,
    TResult Function()? userNotFound,
    TResult Function()? locationDenied,
    TResult Function()? locationDisabled,
    TResult Function()? locationDeniedPermanently,
    TResult Function()? someThingWrongPleaseTryAgain,
    TResult Function(String error)? error401,
    TResult Function(Error422Model error422model)? error422,
    required TResult orElse(),
  }) {
    if (error422 != null) {
      return error422(error422model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KFailureError value) error,
    required TResult Function(KFailureServer value) server,
    required TResult Function(KFailureOffline value) offline,
    required TResult Function(KFailureUserNotFound value) userNotFound,
    required TResult Function(KFailureLocationDenied value) locationDenied,
    required TResult Function(KFailureLocationDisabled value) locationDisabled,
    required TResult Function(KFailureLocationDeniedPermanently value)
        locationDeniedPermanently,
    required TResult Function(KFailureSomeThingWrongPleaseTryAgain value)
        someThingWrongPleaseTryAgain,
    required TResult Function(KFailureError401 value) error401,
    required TResult Function(KFailureError422 value) error422,
  }) {
    return error422(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KFailureError value)? error,
    TResult? Function(KFailureServer value)? server,
    TResult? Function(KFailureOffline value)? offline,
    TResult? Function(KFailureUserNotFound value)? userNotFound,
    TResult? Function(KFailureLocationDenied value)? locationDenied,
    TResult? Function(KFailureLocationDisabled value)? locationDisabled,
    TResult? Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult? Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
    TResult? Function(KFailureError401 value)? error401,
    TResult? Function(KFailureError422 value)? error422,
  }) {
    return error422?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KFailureError value)? error,
    TResult Function(KFailureServer value)? server,
    TResult Function(KFailureOffline value)? offline,
    TResult Function(KFailureUserNotFound value)? userNotFound,
    TResult Function(KFailureLocationDenied value)? locationDenied,
    TResult Function(KFailureLocationDisabled value)? locationDisabled,
    TResult Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
    TResult Function(KFailureError401 value)? error401,
    TResult Function(KFailureError422 value)? error422,
    required TResult orElse(),
  }) {
    if (error422 != null) {
      return error422(this);
    }
    return orElse();
  }
}

abstract class KFailureError422 implements KFailure {
  const factory KFailureError422({required final Error422Model error422model}) =
      _$KFailureError422;

  Error422Model get error422model;
  @JsonKey(ignore: true)
  _$$KFailureError422CopyWith<_$KFailureError422> get copyWith =>
      throw _privateConstructorUsedError;
}
