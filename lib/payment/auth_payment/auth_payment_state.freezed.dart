// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_payment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PaymentAuthResponse paymentAuthResponse) success,
    required TResult Function(String error) error,
    required TResult Function(OrderResponse orderResponse) successOrder,
    required TResult Function(PaymentKeyResponse paymentKeyResponse)
        successPaymentKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PaymentAuthResponse paymentAuthResponse)? success,
    TResult? Function(String error)? error,
    TResult? Function(OrderResponse orderResponse)? successOrder,
    TResult? Function(PaymentKeyResponse paymentKeyResponse)? successPaymentKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PaymentAuthResponse paymentAuthResponse)? success,
    TResult Function(String error)? error,
    TResult Function(OrderResponse orderResponse)? successOrder,
    TResult Function(PaymentKeyResponse paymentKeyResponse)? successPaymentKey,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentStateInitial value) initial,
    required TResult Function(PaymentStateLoading value) loading,
    required TResult Function(PaymentStateSuccess value) success,
    required TResult Function(PaymentStateError value) error,
    required TResult Function(OrderStateSuccess value) successOrder,
    required TResult Function(PaymentKeySuccess value) successPaymentKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentStateInitial value)? initial,
    TResult? Function(PaymentStateLoading value)? loading,
    TResult? Function(PaymentStateSuccess value)? success,
    TResult? Function(PaymentStateError value)? error,
    TResult? Function(OrderStateSuccess value)? successOrder,
    TResult? Function(PaymentKeySuccess value)? successPaymentKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentStateInitial value)? initial,
    TResult Function(PaymentStateLoading value)? loading,
    TResult Function(PaymentStateSuccess value)? success,
    TResult Function(PaymentStateError value)? error,
    TResult Function(OrderStateSuccess value)? successOrder,
    TResult Function(PaymentKeySuccess value)? successPaymentKey,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PaymentStateInitialCopyWith<$Res> {
  factory _$$PaymentStateInitialCopyWith(_$PaymentStateInitial value,
          $Res Function(_$PaymentStateInitial) then) =
      __$$PaymentStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentStateInitialCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentStateInitial>
    implements _$$PaymentStateInitialCopyWith<$Res> {
  __$$PaymentStateInitialCopyWithImpl(
      _$PaymentStateInitial _value, $Res Function(_$PaymentStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaymentStateInitial implements PaymentStateInitial {
  const _$PaymentStateInitial();

  @override
  String toString() {
    return 'PaymentState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PaymentStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PaymentAuthResponse paymentAuthResponse) success,
    required TResult Function(String error) error,
    required TResult Function(OrderResponse orderResponse) successOrder,
    required TResult Function(PaymentKeyResponse paymentKeyResponse)
        successPaymentKey,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PaymentAuthResponse paymentAuthResponse)? success,
    TResult? Function(String error)? error,
    TResult? Function(OrderResponse orderResponse)? successOrder,
    TResult? Function(PaymentKeyResponse paymentKeyResponse)? successPaymentKey,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PaymentAuthResponse paymentAuthResponse)? success,
    TResult Function(String error)? error,
    TResult Function(OrderResponse orderResponse)? successOrder,
    TResult Function(PaymentKeyResponse paymentKeyResponse)? successPaymentKey,
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
    required TResult Function(PaymentStateInitial value) initial,
    required TResult Function(PaymentStateLoading value) loading,
    required TResult Function(PaymentStateSuccess value) success,
    required TResult Function(PaymentStateError value) error,
    required TResult Function(OrderStateSuccess value) successOrder,
    required TResult Function(PaymentKeySuccess value) successPaymentKey,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentStateInitial value)? initial,
    TResult? Function(PaymentStateLoading value)? loading,
    TResult? Function(PaymentStateSuccess value)? success,
    TResult? Function(PaymentStateError value)? error,
    TResult? Function(OrderStateSuccess value)? successOrder,
    TResult? Function(PaymentKeySuccess value)? successPaymentKey,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentStateInitial value)? initial,
    TResult Function(PaymentStateLoading value)? loading,
    TResult Function(PaymentStateSuccess value)? success,
    TResult Function(PaymentStateError value)? error,
    TResult Function(OrderStateSuccess value)? successOrder,
    TResult Function(PaymentKeySuccess value)? successPaymentKey,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PaymentStateInitial implements PaymentState {
  const factory PaymentStateInitial() = _$PaymentStateInitial;
}

/// @nodoc
abstract class _$$PaymentStateLoadingCopyWith<$Res> {
  factory _$$PaymentStateLoadingCopyWith(_$PaymentStateLoading value,
          $Res Function(_$PaymentStateLoading) then) =
      __$$PaymentStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentStateLoadingCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentStateLoading>
    implements _$$PaymentStateLoadingCopyWith<$Res> {
  __$$PaymentStateLoadingCopyWithImpl(
      _$PaymentStateLoading _value, $Res Function(_$PaymentStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaymentStateLoading implements PaymentStateLoading {
  const _$PaymentStateLoading();

  @override
  String toString() {
    return 'PaymentState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PaymentStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PaymentAuthResponse paymentAuthResponse) success,
    required TResult Function(String error) error,
    required TResult Function(OrderResponse orderResponse) successOrder,
    required TResult Function(PaymentKeyResponse paymentKeyResponse)
        successPaymentKey,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PaymentAuthResponse paymentAuthResponse)? success,
    TResult? Function(String error)? error,
    TResult? Function(OrderResponse orderResponse)? successOrder,
    TResult? Function(PaymentKeyResponse paymentKeyResponse)? successPaymentKey,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PaymentAuthResponse paymentAuthResponse)? success,
    TResult Function(String error)? error,
    TResult Function(OrderResponse orderResponse)? successOrder,
    TResult Function(PaymentKeyResponse paymentKeyResponse)? successPaymentKey,
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
    required TResult Function(PaymentStateInitial value) initial,
    required TResult Function(PaymentStateLoading value) loading,
    required TResult Function(PaymentStateSuccess value) success,
    required TResult Function(PaymentStateError value) error,
    required TResult Function(OrderStateSuccess value) successOrder,
    required TResult Function(PaymentKeySuccess value) successPaymentKey,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentStateInitial value)? initial,
    TResult? Function(PaymentStateLoading value)? loading,
    TResult? Function(PaymentStateSuccess value)? success,
    TResult? Function(PaymentStateError value)? error,
    TResult? Function(OrderStateSuccess value)? successOrder,
    TResult? Function(PaymentKeySuccess value)? successPaymentKey,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentStateInitial value)? initial,
    TResult Function(PaymentStateLoading value)? loading,
    TResult Function(PaymentStateSuccess value)? success,
    TResult Function(PaymentStateError value)? error,
    TResult Function(OrderStateSuccess value)? successOrder,
    TResult Function(PaymentKeySuccess value)? successPaymentKey,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PaymentStateLoading implements PaymentState {
  const factory PaymentStateLoading() = _$PaymentStateLoading;
}

/// @nodoc
abstract class _$$PaymentStateSuccessCopyWith<$Res> {
  factory _$$PaymentStateSuccessCopyWith(_$PaymentStateSuccess value,
          $Res Function(_$PaymentStateSuccess) then) =
      __$$PaymentStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentAuthResponse paymentAuthResponse});
}

/// @nodoc
class __$$PaymentStateSuccessCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentStateSuccess>
    implements _$$PaymentStateSuccessCopyWith<$Res> {
  __$$PaymentStateSuccessCopyWithImpl(
      _$PaymentStateSuccess _value, $Res Function(_$PaymentStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentAuthResponse = null,
  }) {
    return _then(_$PaymentStateSuccess(
      null == paymentAuthResponse
          ? _value.paymentAuthResponse
          : paymentAuthResponse // ignore: cast_nullable_to_non_nullable
              as PaymentAuthResponse,
    ));
  }
}

/// @nodoc

class _$PaymentStateSuccess implements PaymentStateSuccess {
  const _$PaymentStateSuccess(this.paymentAuthResponse);

  @override
  final PaymentAuthResponse paymentAuthResponse;

  @override
  String toString() {
    return 'PaymentState.success(paymentAuthResponse: $paymentAuthResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentStateSuccess &&
            (identical(other.paymentAuthResponse, paymentAuthResponse) ||
                other.paymentAuthResponse == paymentAuthResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentAuthResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentStateSuccessCopyWith<_$PaymentStateSuccess> get copyWith =>
      __$$PaymentStateSuccessCopyWithImpl<_$PaymentStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PaymentAuthResponse paymentAuthResponse) success,
    required TResult Function(String error) error,
    required TResult Function(OrderResponse orderResponse) successOrder,
    required TResult Function(PaymentKeyResponse paymentKeyResponse)
        successPaymentKey,
  }) {
    return success(paymentAuthResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PaymentAuthResponse paymentAuthResponse)? success,
    TResult? Function(String error)? error,
    TResult? Function(OrderResponse orderResponse)? successOrder,
    TResult? Function(PaymentKeyResponse paymentKeyResponse)? successPaymentKey,
  }) {
    return success?.call(paymentAuthResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PaymentAuthResponse paymentAuthResponse)? success,
    TResult Function(String error)? error,
    TResult Function(OrderResponse orderResponse)? successOrder,
    TResult Function(PaymentKeyResponse paymentKeyResponse)? successPaymentKey,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(paymentAuthResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentStateInitial value) initial,
    required TResult Function(PaymentStateLoading value) loading,
    required TResult Function(PaymentStateSuccess value) success,
    required TResult Function(PaymentStateError value) error,
    required TResult Function(OrderStateSuccess value) successOrder,
    required TResult Function(PaymentKeySuccess value) successPaymentKey,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentStateInitial value)? initial,
    TResult? Function(PaymentStateLoading value)? loading,
    TResult? Function(PaymentStateSuccess value)? success,
    TResult? Function(PaymentStateError value)? error,
    TResult? Function(OrderStateSuccess value)? successOrder,
    TResult? Function(PaymentKeySuccess value)? successPaymentKey,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentStateInitial value)? initial,
    TResult Function(PaymentStateLoading value)? loading,
    TResult Function(PaymentStateSuccess value)? success,
    TResult Function(PaymentStateError value)? error,
    TResult Function(OrderStateSuccess value)? successOrder,
    TResult Function(PaymentKeySuccess value)? successPaymentKey,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class PaymentStateSuccess implements PaymentState {
  const factory PaymentStateSuccess(
      final PaymentAuthResponse paymentAuthResponse) = _$PaymentStateSuccess;

  PaymentAuthResponse get paymentAuthResponse;
  @JsonKey(ignore: true)
  _$$PaymentStateSuccessCopyWith<_$PaymentStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentStateErrorCopyWith<$Res> {
  factory _$$PaymentStateErrorCopyWith(
          _$PaymentStateError value, $Res Function(_$PaymentStateError) then) =
      __$$PaymentStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$PaymentStateErrorCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentStateError>
    implements _$$PaymentStateErrorCopyWith<$Res> {
  __$$PaymentStateErrorCopyWithImpl(
      _$PaymentStateError _value, $Res Function(_$PaymentStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$PaymentStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaymentStateError implements PaymentStateError {
  const _$PaymentStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'PaymentState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentStateErrorCopyWith<_$PaymentStateError> get copyWith =>
      __$$PaymentStateErrorCopyWithImpl<_$PaymentStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PaymentAuthResponse paymentAuthResponse) success,
    required TResult Function(String error) error,
    required TResult Function(OrderResponse orderResponse) successOrder,
    required TResult Function(PaymentKeyResponse paymentKeyResponse)
        successPaymentKey,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PaymentAuthResponse paymentAuthResponse)? success,
    TResult? Function(String error)? error,
    TResult? Function(OrderResponse orderResponse)? successOrder,
    TResult? Function(PaymentKeyResponse paymentKeyResponse)? successPaymentKey,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PaymentAuthResponse paymentAuthResponse)? success,
    TResult Function(String error)? error,
    TResult Function(OrderResponse orderResponse)? successOrder,
    TResult Function(PaymentKeyResponse paymentKeyResponse)? successPaymentKey,
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
    required TResult Function(PaymentStateInitial value) initial,
    required TResult Function(PaymentStateLoading value) loading,
    required TResult Function(PaymentStateSuccess value) success,
    required TResult Function(PaymentStateError value) error,
    required TResult Function(OrderStateSuccess value) successOrder,
    required TResult Function(PaymentKeySuccess value) successPaymentKey,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentStateInitial value)? initial,
    TResult? Function(PaymentStateLoading value)? loading,
    TResult? Function(PaymentStateSuccess value)? success,
    TResult? Function(PaymentStateError value)? error,
    TResult? Function(OrderStateSuccess value)? successOrder,
    TResult? Function(PaymentKeySuccess value)? successPaymentKey,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentStateInitial value)? initial,
    TResult Function(PaymentStateLoading value)? loading,
    TResult Function(PaymentStateSuccess value)? success,
    TResult Function(PaymentStateError value)? error,
    TResult Function(OrderStateSuccess value)? successOrder,
    TResult Function(PaymentKeySuccess value)? successPaymentKey,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PaymentStateError implements PaymentState {
  const factory PaymentStateError({required final String error}) =
      _$PaymentStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$PaymentStateErrorCopyWith<_$PaymentStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderStateSuccessCopyWith<$Res> {
  factory _$$OrderStateSuccessCopyWith(
          _$OrderStateSuccess value, $Res Function(_$OrderStateSuccess) then) =
      __$$OrderStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderResponse orderResponse});
}

/// @nodoc
class __$$OrderStateSuccessCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$OrderStateSuccess>
    implements _$$OrderStateSuccessCopyWith<$Res> {
  __$$OrderStateSuccessCopyWithImpl(
      _$OrderStateSuccess _value, $Res Function(_$OrderStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderResponse = null,
  }) {
    return _then(_$OrderStateSuccess(
      null == orderResponse
          ? _value.orderResponse
          : orderResponse // ignore: cast_nullable_to_non_nullable
              as OrderResponse,
    ));
  }
}

/// @nodoc

class _$OrderStateSuccess implements OrderStateSuccess {
  const _$OrderStateSuccess(this.orderResponse);

  @override
  final OrderResponse orderResponse;

  @override
  String toString() {
    return 'PaymentState.successOrder(orderResponse: $orderResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderStateSuccess &&
            (identical(other.orderResponse, orderResponse) ||
                other.orderResponse == orderResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderStateSuccessCopyWith<_$OrderStateSuccess> get copyWith =>
      __$$OrderStateSuccessCopyWithImpl<_$OrderStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PaymentAuthResponse paymentAuthResponse) success,
    required TResult Function(String error) error,
    required TResult Function(OrderResponse orderResponse) successOrder,
    required TResult Function(PaymentKeyResponse paymentKeyResponse)
        successPaymentKey,
  }) {
    return successOrder(orderResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PaymentAuthResponse paymentAuthResponse)? success,
    TResult? Function(String error)? error,
    TResult? Function(OrderResponse orderResponse)? successOrder,
    TResult? Function(PaymentKeyResponse paymentKeyResponse)? successPaymentKey,
  }) {
    return successOrder?.call(orderResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PaymentAuthResponse paymentAuthResponse)? success,
    TResult Function(String error)? error,
    TResult Function(OrderResponse orderResponse)? successOrder,
    TResult Function(PaymentKeyResponse paymentKeyResponse)? successPaymentKey,
    required TResult orElse(),
  }) {
    if (successOrder != null) {
      return successOrder(orderResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentStateInitial value) initial,
    required TResult Function(PaymentStateLoading value) loading,
    required TResult Function(PaymentStateSuccess value) success,
    required TResult Function(PaymentStateError value) error,
    required TResult Function(OrderStateSuccess value) successOrder,
    required TResult Function(PaymentKeySuccess value) successPaymentKey,
  }) {
    return successOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentStateInitial value)? initial,
    TResult? Function(PaymentStateLoading value)? loading,
    TResult? Function(PaymentStateSuccess value)? success,
    TResult? Function(PaymentStateError value)? error,
    TResult? Function(OrderStateSuccess value)? successOrder,
    TResult? Function(PaymentKeySuccess value)? successPaymentKey,
  }) {
    return successOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentStateInitial value)? initial,
    TResult Function(PaymentStateLoading value)? loading,
    TResult Function(PaymentStateSuccess value)? success,
    TResult Function(PaymentStateError value)? error,
    TResult Function(OrderStateSuccess value)? successOrder,
    TResult Function(PaymentKeySuccess value)? successPaymentKey,
    required TResult orElse(),
  }) {
    if (successOrder != null) {
      return successOrder(this);
    }
    return orElse();
  }
}

abstract class OrderStateSuccess implements PaymentState {
  const factory OrderStateSuccess(final OrderResponse orderResponse) =
      _$OrderStateSuccess;

  OrderResponse get orderResponse;
  @JsonKey(ignore: true)
  _$$OrderStateSuccessCopyWith<_$OrderStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentKeySuccessCopyWith<$Res> {
  factory _$$PaymentKeySuccessCopyWith(
          _$PaymentKeySuccess value, $Res Function(_$PaymentKeySuccess) then) =
      __$$PaymentKeySuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentKeyResponse paymentKeyResponse});
}

/// @nodoc
class __$$PaymentKeySuccessCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentKeySuccess>
    implements _$$PaymentKeySuccessCopyWith<$Res> {
  __$$PaymentKeySuccessCopyWithImpl(
      _$PaymentKeySuccess _value, $Res Function(_$PaymentKeySuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentKeyResponse = null,
  }) {
    return _then(_$PaymentKeySuccess(
      null == paymentKeyResponse
          ? _value.paymentKeyResponse
          : paymentKeyResponse // ignore: cast_nullable_to_non_nullable
              as PaymentKeyResponse,
    ));
  }
}

/// @nodoc

class _$PaymentKeySuccess implements PaymentKeySuccess {
  const _$PaymentKeySuccess(this.paymentKeyResponse);

  @override
  final PaymentKeyResponse paymentKeyResponse;

  @override
  String toString() {
    return 'PaymentState.successPaymentKey(paymentKeyResponse: $paymentKeyResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentKeySuccess &&
            (identical(other.paymentKeyResponse, paymentKeyResponse) ||
                other.paymentKeyResponse == paymentKeyResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentKeyResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentKeySuccessCopyWith<_$PaymentKeySuccess> get copyWith =>
      __$$PaymentKeySuccessCopyWithImpl<_$PaymentKeySuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PaymentAuthResponse paymentAuthResponse) success,
    required TResult Function(String error) error,
    required TResult Function(OrderResponse orderResponse) successOrder,
    required TResult Function(PaymentKeyResponse paymentKeyResponse)
        successPaymentKey,
  }) {
    return successPaymentKey(paymentKeyResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PaymentAuthResponse paymentAuthResponse)? success,
    TResult? Function(String error)? error,
    TResult? Function(OrderResponse orderResponse)? successOrder,
    TResult? Function(PaymentKeyResponse paymentKeyResponse)? successPaymentKey,
  }) {
    return successPaymentKey?.call(paymentKeyResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PaymentAuthResponse paymentAuthResponse)? success,
    TResult Function(String error)? error,
    TResult Function(OrderResponse orderResponse)? successOrder,
    TResult Function(PaymentKeyResponse paymentKeyResponse)? successPaymentKey,
    required TResult orElse(),
  }) {
    if (successPaymentKey != null) {
      return successPaymentKey(paymentKeyResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentStateInitial value) initial,
    required TResult Function(PaymentStateLoading value) loading,
    required TResult Function(PaymentStateSuccess value) success,
    required TResult Function(PaymentStateError value) error,
    required TResult Function(OrderStateSuccess value) successOrder,
    required TResult Function(PaymentKeySuccess value) successPaymentKey,
  }) {
    return successPaymentKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentStateInitial value)? initial,
    TResult? Function(PaymentStateLoading value)? loading,
    TResult? Function(PaymentStateSuccess value)? success,
    TResult? Function(PaymentStateError value)? error,
    TResult? Function(OrderStateSuccess value)? successOrder,
    TResult? Function(PaymentKeySuccess value)? successPaymentKey,
  }) {
    return successPaymentKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentStateInitial value)? initial,
    TResult Function(PaymentStateLoading value)? loading,
    TResult Function(PaymentStateSuccess value)? success,
    TResult Function(PaymentStateError value)? error,
    TResult Function(OrderStateSuccess value)? successOrder,
    TResult Function(PaymentKeySuccess value)? successPaymentKey,
    required TResult orElse(),
  }) {
    if (successPaymentKey != null) {
      return successPaymentKey(this);
    }
    return orElse();
  }
}

abstract class PaymentKeySuccess implements PaymentState {
  const factory PaymentKeySuccess(final PaymentKeyResponse paymentKeyResponse) =
      _$PaymentKeySuccess;

  PaymentKeyResponse get paymentKeyResponse;
  @JsonKey(ignore: true)
  _$$PaymentKeySuccessCopyWith<_$PaymentKeySuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
