// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(SettingModel model) success,
    required TResult Function(String failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(SettingModel model)? success,
    TResult? Function(String failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(SettingModel model)? success,
    TResult Function(String failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingStateLoading value) loading,
    required TResult Function(SettingStateSuccess value) success,
    required TResult Function(SettingStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingStateLoading value)? loading,
    TResult? Function(SettingStateSuccess value)? success,
    TResult? Function(SettingStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingStateLoading value)? loading,
    TResult Function(SettingStateSuccess value)? success,
    TResult Function(SettingStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingStateCopyWith<$Res> {
  factory $SettingStateCopyWith(
          SettingState value, $Res Function(SettingState) then) =
      _$SettingStateCopyWithImpl<$Res, SettingState>;
}

/// @nodoc
class _$SettingStateCopyWithImpl<$Res, $Val extends SettingState>
    implements $SettingStateCopyWith<$Res> {
  _$SettingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SettingStateLoadingCopyWith<$Res> {
  factory _$$SettingStateLoadingCopyWith(_$SettingStateLoading value,
          $Res Function(_$SettingStateLoading) then) =
      __$$SettingStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingStateLoadingCopyWithImpl<$Res>
    extends _$SettingStateCopyWithImpl<$Res, _$SettingStateLoading>
    implements _$$SettingStateLoadingCopyWith<$Res> {
  __$$SettingStateLoadingCopyWithImpl(
      _$SettingStateLoading _value, $Res Function(_$SettingStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SettingStateLoading implements SettingStateLoading {
  const _$SettingStateLoading();

  @override
  String toString() {
    return 'SettingState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SettingStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(SettingModel model) success,
    required TResult Function(String failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(SettingModel model)? success,
    TResult? Function(String failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(SettingModel model)? success,
    TResult Function(String failure)? error,
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
    required TResult Function(SettingStateLoading value) loading,
    required TResult Function(SettingStateSuccess value) success,
    required TResult Function(SettingStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingStateLoading value)? loading,
    TResult? Function(SettingStateSuccess value)? success,
    TResult? Function(SettingStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingStateLoading value)? loading,
    TResult Function(SettingStateSuccess value)? success,
    TResult Function(SettingStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SettingStateLoading implements SettingState {
  const factory SettingStateLoading() = _$SettingStateLoading;
}

/// @nodoc
abstract class _$$SettingStateSuccessCopyWith<$Res> {
  factory _$$SettingStateSuccessCopyWith(_$SettingStateSuccess value,
          $Res Function(_$SettingStateSuccess) then) =
      __$$SettingStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({SettingModel model});
}

/// @nodoc
class __$$SettingStateSuccessCopyWithImpl<$Res>
    extends _$SettingStateCopyWithImpl<$Res, _$SettingStateSuccess>
    implements _$$SettingStateSuccessCopyWith<$Res> {
  __$$SettingStateSuccessCopyWithImpl(
      _$SettingStateSuccess _value, $Res Function(_$SettingStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$SettingStateSuccess(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as SettingModel,
    ));
  }
}

/// @nodoc

class _$SettingStateSuccess implements SettingStateSuccess {
  const _$SettingStateSuccess({required this.model});

  @override
  final SettingModel model;

  @override
  String toString() {
    return 'SettingState.success(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingStateSuccess &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingStateSuccessCopyWith<_$SettingStateSuccess> get copyWith =>
      __$$SettingStateSuccessCopyWithImpl<_$SettingStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(SettingModel model) success,
    required TResult Function(String failure) error,
  }) {
    return success(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(SettingModel model)? success,
    TResult? Function(String failure)? error,
  }) {
    return success?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(SettingModel model)? success,
    TResult Function(String failure)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingStateLoading value) loading,
    required TResult Function(SettingStateSuccess value) success,
    required TResult Function(SettingStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingStateLoading value)? loading,
    TResult? Function(SettingStateSuccess value)? success,
    TResult? Function(SettingStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingStateLoading value)? loading,
    TResult Function(SettingStateSuccess value)? success,
    TResult Function(SettingStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SettingStateSuccess implements SettingState {
  const factory SettingStateSuccess({required final SettingModel model}) =
      _$SettingStateSuccess;

  SettingModel get model;
  @JsonKey(ignore: true)
  _$$SettingStateSuccessCopyWith<_$SettingStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingStateErrorCopyWith<$Res> {
  factory _$$SettingStateErrorCopyWith(
          _$SettingStateError value, $Res Function(_$SettingStateError) then) =
      __$$SettingStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String failure});
}

/// @nodoc
class __$$SettingStateErrorCopyWithImpl<$Res>
    extends _$SettingStateCopyWithImpl<$Res, _$SettingStateError>
    implements _$$SettingStateErrorCopyWith<$Res> {
  __$$SettingStateErrorCopyWithImpl(
      _$SettingStateError _value, $Res Function(_$SettingStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$SettingStateError(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SettingStateError implements SettingStateError {
  const _$SettingStateError({required this.failure});

  @override
  final String failure;

  @override
  String toString() {
    return 'SettingState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingStateError &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingStateErrorCopyWith<_$SettingStateError> get copyWith =>
      __$$SettingStateErrorCopyWithImpl<_$SettingStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(SettingModel model) success,
    required TResult Function(String failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(SettingModel model)? success,
    TResult? Function(String failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(SettingModel model)? success,
    TResult Function(String failure)? error,
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
    required TResult Function(SettingStateLoading value) loading,
    required TResult Function(SettingStateSuccess value) success,
    required TResult Function(SettingStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingStateLoading value)? loading,
    TResult? Function(SettingStateSuccess value)? success,
    TResult? Function(SettingStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingStateLoading value)? loading,
    TResult Function(SettingStateSuccess value)? success,
    TResult Function(SettingStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SettingStateError implements SettingState {
  const factory SettingStateError({required final String failure}) =
      _$SettingStateError;

  String get failure;
  @JsonKey(ignore: true)
  _$$SettingStateErrorCopyWith<_$SettingStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
