// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MonthlyState {
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
    required TResult Function(MonthlyStateInitial value) initial,
    required TResult Function(MonthlyStateLoading value) loading,
    required TResult Function(MonthlyStateSuccess value) success,
    required TResult Function(MonthlyStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonthlyStateInitial value)? initial,
    TResult? Function(MonthlyStateLoading value)? loading,
    TResult? Function(MonthlyStateSuccess value)? success,
    TResult? Function(MonthlyStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonthlyStateInitial value)? initial,
    TResult Function(MonthlyStateLoading value)? loading,
    TResult Function(MonthlyStateSuccess value)? success,
    TResult Function(MonthlyStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlyStateCopyWith<$Res> {
  factory $MonthlyStateCopyWith(
          MonthlyState value, $Res Function(MonthlyState) then) =
      _$MonthlyStateCopyWithImpl<$Res, MonthlyState>;
}

/// @nodoc
class _$MonthlyStateCopyWithImpl<$Res, $Val extends MonthlyState>
    implements $MonthlyStateCopyWith<$Res> {
  _$MonthlyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MonthlyStateInitialCopyWith<$Res> {
  factory _$$MonthlyStateInitialCopyWith(_$MonthlyStateInitial value,
          $Res Function(_$MonthlyStateInitial) then) =
      __$$MonthlyStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MonthlyStateInitialCopyWithImpl<$Res>
    extends _$MonthlyStateCopyWithImpl<$Res, _$MonthlyStateInitial>
    implements _$$MonthlyStateInitialCopyWith<$Res> {
  __$$MonthlyStateInitialCopyWithImpl(
      _$MonthlyStateInitial _value, $Res Function(_$MonthlyStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MonthlyStateInitial implements MonthlyStateInitial {
  const _$MonthlyStateInitial();

  @override
  String toString() {
    return 'MonthlyState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MonthlyStateInitial);
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
    required TResult Function(MonthlyStateInitial value) initial,
    required TResult Function(MonthlyStateLoading value) loading,
    required TResult Function(MonthlyStateSuccess value) success,
    required TResult Function(MonthlyStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonthlyStateInitial value)? initial,
    TResult? Function(MonthlyStateLoading value)? loading,
    TResult? Function(MonthlyStateSuccess value)? success,
    TResult? Function(MonthlyStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonthlyStateInitial value)? initial,
    TResult Function(MonthlyStateLoading value)? loading,
    TResult Function(MonthlyStateSuccess value)? success,
    TResult Function(MonthlyStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MonthlyStateInitial implements MonthlyState {
  const factory MonthlyStateInitial() = _$MonthlyStateInitial;
}

/// @nodoc
abstract class _$$MonthlyStateLoadingCopyWith<$Res> {
  factory _$$MonthlyStateLoadingCopyWith(_$MonthlyStateLoading value,
          $Res Function(_$MonthlyStateLoading) then) =
      __$$MonthlyStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MonthlyStateLoadingCopyWithImpl<$Res>
    extends _$MonthlyStateCopyWithImpl<$Res, _$MonthlyStateLoading>
    implements _$$MonthlyStateLoadingCopyWith<$Res> {
  __$$MonthlyStateLoadingCopyWithImpl(
      _$MonthlyStateLoading _value, $Res Function(_$MonthlyStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MonthlyStateLoading implements MonthlyStateLoading {
  const _$MonthlyStateLoading();

  @override
  String toString() {
    return 'MonthlyState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MonthlyStateLoading);
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
    required TResult Function(MonthlyStateInitial value) initial,
    required TResult Function(MonthlyStateLoading value) loading,
    required TResult Function(MonthlyStateSuccess value) success,
    required TResult Function(MonthlyStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonthlyStateInitial value)? initial,
    TResult? Function(MonthlyStateLoading value)? loading,
    TResult? Function(MonthlyStateSuccess value)? success,
    TResult? Function(MonthlyStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonthlyStateInitial value)? initial,
    TResult Function(MonthlyStateLoading value)? loading,
    TResult Function(MonthlyStateSuccess value)? success,
    TResult Function(MonthlyStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MonthlyStateLoading implements MonthlyState {
  const factory MonthlyStateLoading() = _$MonthlyStateLoading;
}

/// @nodoc
abstract class _$$MonthlyStateSuccessCopyWith<$Res> {
  factory _$$MonthlyStateSuccessCopyWith(_$MonthlyStateSuccess value,
          $Res Function(_$MonthlyStateSuccess) then) =
      __$$MonthlyStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MonthlyStateSuccessCopyWithImpl<$Res>
    extends _$MonthlyStateCopyWithImpl<$Res, _$MonthlyStateSuccess>
    implements _$$MonthlyStateSuccessCopyWith<$Res> {
  __$$MonthlyStateSuccessCopyWithImpl(
      _$MonthlyStateSuccess _value, $Res Function(_$MonthlyStateSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MonthlyStateSuccess implements MonthlyStateSuccess {
  const _$MonthlyStateSuccess();

  @override
  String toString() {
    return 'MonthlyState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MonthlyStateSuccess);
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
    required TResult Function(MonthlyStateInitial value) initial,
    required TResult Function(MonthlyStateLoading value) loading,
    required TResult Function(MonthlyStateSuccess value) success,
    required TResult Function(MonthlyStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonthlyStateInitial value)? initial,
    TResult? Function(MonthlyStateLoading value)? loading,
    TResult? Function(MonthlyStateSuccess value)? success,
    TResult? Function(MonthlyStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonthlyStateInitial value)? initial,
    TResult Function(MonthlyStateLoading value)? loading,
    TResult Function(MonthlyStateSuccess value)? success,
    TResult Function(MonthlyStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class MonthlyStateSuccess implements MonthlyState {
  const factory MonthlyStateSuccess() = _$MonthlyStateSuccess;
}

/// @nodoc
abstract class _$$MonthlyStateErrorCopyWith<$Res> {
  factory _$$MonthlyStateErrorCopyWith(
          _$MonthlyStateError value, $Res Function(_$MonthlyStateError) then) =
      __$$MonthlyStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({KFailure failure});

  $KFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$MonthlyStateErrorCopyWithImpl<$Res>
    extends _$MonthlyStateCopyWithImpl<$Res, _$MonthlyStateError>
    implements _$$MonthlyStateErrorCopyWith<$Res> {
  __$$MonthlyStateErrorCopyWithImpl(
      _$MonthlyStateError _value, $Res Function(_$MonthlyStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$MonthlyStateError(
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

class _$MonthlyStateError implements MonthlyStateError {
  const _$MonthlyStateError({required this.failure});

  @override
  final KFailure failure;

  @override
  String toString() {
    return 'MonthlyState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthlyStateError &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthlyStateErrorCopyWith<_$MonthlyStateError> get copyWith =>
      __$$MonthlyStateErrorCopyWithImpl<_$MonthlyStateError>(this, _$identity);

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
    required TResult Function(MonthlyStateInitial value) initial,
    required TResult Function(MonthlyStateLoading value) loading,
    required TResult Function(MonthlyStateSuccess value) success,
    required TResult Function(MonthlyStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonthlyStateInitial value)? initial,
    TResult? Function(MonthlyStateLoading value)? loading,
    TResult? Function(MonthlyStateSuccess value)? success,
    TResult? Function(MonthlyStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonthlyStateInitial value)? initial,
    TResult Function(MonthlyStateLoading value)? loading,
    TResult Function(MonthlyStateSuccess value)? success,
    TResult Function(MonthlyStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MonthlyStateError implements MonthlyState {
  const factory MonthlyStateError({required final KFailure failure}) =
      _$MonthlyStateError;

  KFailure get failure;
  @JsonKey(ignore: true)
  _$$MonthlyStateErrorCopyWith<_$MonthlyStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
