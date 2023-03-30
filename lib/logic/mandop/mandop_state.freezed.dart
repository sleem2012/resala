// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mandop_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MandopState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(KFailure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(KFailure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(KFailure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MandopStateInitial value) initial,
    required TResult Function(MandopStateLoading value) loading,
    required TResult Function(MandopStateSuccess value) success,
    required TResult Function(MandopStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MandopStateInitial value)? initial,
    TResult? Function(MandopStateLoading value)? loading,
    TResult? Function(MandopStateSuccess value)? success,
    TResult? Function(MandopStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MandopStateInitial value)? initial,
    TResult Function(MandopStateLoading value)? loading,
    TResult Function(MandopStateSuccess value)? success,
    TResult Function(MandopStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MandopStateCopyWith<$Res> {
  factory $MandopStateCopyWith(
          MandopState value, $Res Function(MandopState) then) =
      _$MandopStateCopyWithImpl<$Res, MandopState>;
}

/// @nodoc
class _$MandopStateCopyWithImpl<$Res, $Val extends MandopState>
    implements $MandopStateCopyWith<$Res> {
  _$MandopStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MandopStateInitialCopyWith<$Res> {
  factory _$$MandopStateInitialCopyWith(_$MandopStateInitial value,
          $Res Function(_$MandopStateInitial) then) =
      __$$MandopStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MandopStateInitialCopyWithImpl<$Res>
    extends _$MandopStateCopyWithImpl<$Res, _$MandopStateInitial>
    implements _$$MandopStateInitialCopyWith<$Res> {
  __$$MandopStateInitialCopyWithImpl(
      _$MandopStateInitial _value, $Res Function(_$MandopStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MandopStateInitial implements MandopStateInitial {
  const _$MandopStateInitial();

  @override
  String toString() {
    return 'MandopState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MandopStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(KFailure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(KFailure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(KFailure failure)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MandopStateInitial value) initial,
    required TResult Function(MandopStateLoading value) loading,
    required TResult Function(MandopStateSuccess value) success,
    required TResult Function(MandopStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MandopStateInitial value)? initial,
    TResult? Function(MandopStateLoading value)? loading,
    TResult? Function(MandopStateSuccess value)? success,
    TResult? Function(MandopStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MandopStateInitial value)? initial,
    TResult Function(MandopStateLoading value)? loading,
    TResult Function(MandopStateSuccess value)? success,
    TResult Function(MandopStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MandopStateInitial implements MandopState {
  const factory MandopStateInitial() = _$MandopStateInitial;
}

/// @nodoc
abstract class _$$MandopStateLoadingCopyWith<$Res> {
  factory _$$MandopStateLoadingCopyWith(_$MandopStateLoading value,
          $Res Function(_$MandopStateLoading) then) =
      __$$MandopStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MandopStateLoadingCopyWithImpl<$Res>
    extends _$MandopStateCopyWithImpl<$Res, _$MandopStateLoading>
    implements _$$MandopStateLoadingCopyWith<$Res> {
  __$$MandopStateLoadingCopyWithImpl(
      _$MandopStateLoading _value, $Res Function(_$MandopStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MandopStateLoading implements MandopStateLoading {
  const _$MandopStateLoading();

  @override
  String toString() {
    return 'MandopState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MandopStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(KFailure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(KFailure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(KFailure failure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MandopStateInitial value) initial,
    required TResult Function(MandopStateLoading value) loading,
    required TResult Function(MandopStateSuccess value) success,
    required TResult Function(MandopStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MandopStateInitial value)? initial,
    TResult? Function(MandopStateLoading value)? loading,
    TResult? Function(MandopStateSuccess value)? success,
    TResult? Function(MandopStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MandopStateInitial value)? initial,
    TResult Function(MandopStateLoading value)? loading,
    TResult Function(MandopStateSuccess value)? success,
    TResult Function(MandopStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MandopStateLoading implements MandopState {
  const factory MandopStateLoading() = _$MandopStateLoading;
}

/// @nodoc
abstract class _$$MandopStateSuccessCopyWith<$Res> {
  factory _$$MandopStateSuccessCopyWith(_$MandopStateSuccess value,
          $Res Function(_$MandopStateSuccess) then) =
      __$$MandopStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MandopStateSuccessCopyWithImpl<$Res>
    extends _$MandopStateCopyWithImpl<$Res, _$MandopStateSuccess>
    implements _$$MandopStateSuccessCopyWith<$Res> {
  __$$MandopStateSuccessCopyWithImpl(
      _$MandopStateSuccess _value, $Res Function(_$MandopStateSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MandopStateSuccess implements MandopStateSuccess {
  const _$MandopStateSuccess();

  @override
  String toString() {
    return 'MandopState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MandopStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(KFailure failure) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(KFailure failure)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(KFailure failure)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MandopStateInitial value) initial,
    required TResult Function(MandopStateLoading value) loading,
    required TResult Function(MandopStateSuccess value) success,
    required TResult Function(MandopStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MandopStateInitial value)? initial,
    TResult? Function(MandopStateLoading value)? loading,
    TResult? Function(MandopStateSuccess value)? success,
    TResult? Function(MandopStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MandopStateInitial value)? initial,
    TResult Function(MandopStateLoading value)? loading,
    TResult Function(MandopStateSuccess value)? success,
    TResult Function(MandopStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class MandopStateSuccess implements MandopState {
  const factory MandopStateSuccess() = _$MandopStateSuccess;
}

/// @nodoc
abstract class _$$MandopStateErrorCopyWith<$Res> {
  factory _$$MandopStateErrorCopyWith(
          _$MandopStateError value, $Res Function(_$MandopStateError) then) =
      __$$MandopStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({KFailure failure});

  $KFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$MandopStateErrorCopyWithImpl<$Res>
    extends _$MandopStateCopyWithImpl<$Res, _$MandopStateError>
    implements _$$MandopStateErrorCopyWith<$Res> {
  __$$MandopStateErrorCopyWithImpl(
      _$MandopStateError _value, $Res Function(_$MandopStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$MandopStateError(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as KFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $KFailureCopyWith<$Res> get failure {
    return $KFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$MandopStateError implements MandopStateError {
  const _$MandopStateError({required this.failure});

  @override
  final KFailure failure;

  @override
  String toString() {
    return 'MandopState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MandopStateError &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MandopStateErrorCopyWith<_$MandopStateError> get copyWith =>
      __$$MandopStateErrorCopyWithImpl<_$MandopStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(KFailure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(KFailure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(KFailure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MandopStateInitial value) initial,
    required TResult Function(MandopStateLoading value) loading,
    required TResult Function(MandopStateSuccess value) success,
    required TResult Function(MandopStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MandopStateInitial value)? initial,
    TResult? Function(MandopStateLoading value)? loading,
    TResult? Function(MandopStateSuccess value)? success,
    TResult? Function(MandopStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MandopStateInitial value)? initial,
    TResult Function(MandopStateLoading value)? loading,
    TResult Function(MandopStateSuccess value)? success,
    TResult Function(MandopStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MandopStateError implements MandopState {
  const factory MandopStateError({required final KFailure failure}) =
      _$MandopStateError;

  KFailure get failure;
  @JsonKey(ignore: true)
  _$$MandopStateErrorCopyWith<_$MandopStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
