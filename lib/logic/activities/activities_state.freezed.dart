// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activities_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ActivitiesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CommonDataModel model) success,
    required TResult Function(String failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(CommonDataModel model)? success,
    TResult? Function(String failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CommonDataModel model)? success,
    TResult Function(String failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActivitiesStateLoading value) loading,
    required TResult Function(ActivitiesStateSuccess value) success,
    required TResult Function(ActivitiesStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ActivitiesStateLoading value)? loading,
    TResult? Function(ActivitiesStateSuccess value)? success,
    TResult? Function(ActivitiesStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActivitiesStateLoading value)? loading,
    TResult Function(ActivitiesStateSuccess value)? success,
    TResult Function(ActivitiesStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivitiesStateCopyWith<$Res> {
  factory $ActivitiesStateCopyWith(
          ActivitiesState value, $Res Function(ActivitiesState) then) =
      _$ActivitiesStateCopyWithImpl<$Res, ActivitiesState>;
}

/// @nodoc
class _$ActivitiesStateCopyWithImpl<$Res, $Val extends ActivitiesState>
    implements $ActivitiesStateCopyWith<$Res> {
  _$ActivitiesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ActivitiesStateLoadingCopyWith<$Res> {
  factory _$$ActivitiesStateLoadingCopyWith(_$ActivitiesStateLoading value,
          $Res Function(_$ActivitiesStateLoading) then) =
      __$$ActivitiesStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActivitiesStateLoadingCopyWithImpl<$Res>
    extends _$ActivitiesStateCopyWithImpl<$Res, _$ActivitiesStateLoading>
    implements _$$ActivitiesStateLoadingCopyWith<$Res> {
  __$$ActivitiesStateLoadingCopyWithImpl(_$ActivitiesStateLoading _value,
      $Res Function(_$ActivitiesStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ActivitiesStateLoading implements ActivitiesStateLoading {
  const _$ActivitiesStateLoading();

  @override
  String toString() {
    return 'ActivitiesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ActivitiesStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CommonDataModel model) success,
    required TResult Function(String failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(CommonDataModel model)? success,
    TResult? Function(String failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CommonDataModel model)? success,
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
    required TResult Function(ActivitiesStateLoading value) loading,
    required TResult Function(ActivitiesStateSuccess value) success,
    required TResult Function(ActivitiesStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ActivitiesStateLoading value)? loading,
    TResult? Function(ActivitiesStateSuccess value)? success,
    TResult? Function(ActivitiesStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActivitiesStateLoading value)? loading,
    TResult Function(ActivitiesStateSuccess value)? success,
    TResult Function(ActivitiesStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ActivitiesStateLoading implements ActivitiesState {
  const factory ActivitiesStateLoading() = _$ActivitiesStateLoading;
}

/// @nodoc
abstract class _$$ActivitiesStateSuccessCopyWith<$Res> {
  factory _$$ActivitiesStateSuccessCopyWith(_$ActivitiesStateSuccess value,
          $Res Function(_$ActivitiesStateSuccess) then) =
      __$$ActivitiesStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({CommonDataModel model});
}

/// @nodoc
class __$$ActivitiesStateSuccessCopyWithImpl<$Res>
    extends _$ActivitiesStateCopyWithImpl<$Res, _$ActivitiesStateSuccess>
    implements _$$ActivitiesStateSuccessCopyWith<$Res> {
  __$$ActivitiesStateSuccessCopyWithImpl(_$ActivitiesStateSuccess _value,
      $Res Function(_$ActivitiesStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$ActivitiesStateSuccess(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CommonDataModel,
    ));
  }
}

/// @nodoc

class _$ActivitiesStateSuccess implements ActivitiesStateSuccess {
  const _$ActivitiesStateSuccess({required this.model});

  @override
  final CommonDataModel model;

  @override
  String toString() {
    return 'ActivitiesState.success(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivitiesStateSuccess &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivitiesStateSuccessCopyWith<_$ActivitiesStateSuccess> get copyWith =>
      __$$ActivitiesStateSuccessCopyWithImpl<_$ActivitiesStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CommonDataModel model) success,
    required TResult Function(String failure) error,
  }) {
    return success(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(CommonDataModel model)? success,
    TResult? Function(String failure)? error,
  }) {
    return success?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CommonDataModel model)? success,
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
    required TResult Function(ActivitiesStateLoading value) loading,
    required TResult Function(ActivitiesStateSuccess value) success,
    required TResult Function(ActivitiesStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ActivitiesStateLoading value)? loading,
    TResult? Function(ActivitiesStateSuccess value)? success,
    TResult? Function(ActivitiesStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActivitiesStateLoading value)? loading,
    TResult Function(ActivitiesStateSuccess value)? success,
    TResult Function(ActivitiesStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ActivitiesStateSuccess implements ActivitiesState {
  const factory ActivitiesStateSuccess({required final CommonDataModel model}) =
      _$ActivitiesStateSuccess;

  CommonDataModel get model;
  @JsonKey(ignore: true)
  _$$ActivitiesStateSuccessCopyWith<_$ActivitiesStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActivitiesStateErrorCopyWith<$Res> {
  factory _$$ActivitiesStateErrorCopyWith(_$ActivitiesStateError value,
          $Res Function(_$ActivitiesStateError) then) =
      __$$ActivitiesStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String failure});
}

/// @nodoc
class __$$ActivitiesStateErrorCopyWithImpl<$Res>
    extends _$ActivitiesStateCopyWithImpl<$Res, _$ActivitiesStateError>
    implements _$$ActivitiesStateErrorCopyWith<$Res> {
  __$$ActivitiesStateErrorCopyWithImpl(_$ActivitiesStateError _value,
      $Res Function(_$ActivitiesStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ActivitiesStateError(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ActivitiesStateError implements ActivitiesStateError {
  const _$ActivitiesStateError({required this.failure});

  @override
  final String failure;

  @override
  String toString() {
    return 'ActivitiesState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivitiesStateError &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivitiesStateErrorCopyWith<_$ActivitiesStateError> get copyWith =>
      __$$ActivitiesStateErrorCopyWithImpl<_$ActivitiesStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CommonDataModel model) success,
    required TResult Function(String failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(CommonDataModel model)? success,
    TResult? Function(String failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CommonDataModel model)? success,
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
    required TResult Function(ActivitiesStateLoading value) loading,
    required TResult Function(ActivitiesStateSuccess value) success,
    required TResult Function(ActivitiesStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ActivitiesStateLoading value)? loading,
    TResult? Function(ActivitiesStateSuccess value)? success,
    TResult? Function(ActivitiesStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActivitiesStateLoading value)? loading,
    TResult Function(ActivitiesStateSuccess value)? success,
    TResult Function(ActivitiesStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ActivitiesStateError implements ActivitiesState {
  const factory ActivitiesStateError({required final String failure}) =
      _$ActivitiesStateError;

  String get failure;
  @JsonKey(ignore: true)
  _$$ActivitiesStateErrorCopyWith<_$ActivitiesStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
