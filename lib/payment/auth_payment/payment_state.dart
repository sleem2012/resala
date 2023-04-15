// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resala/payment/data/model/order_response_model.dart';
import 'package:resala/payment/data/model/payment_auth_response_model.dart';
import 'package:resala/payment/data/model/payment_key_response.dart';
import 'package:resala/payment/data/model/wallet_pay_response_model.dart';

part 'payment_state.freezed.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial() = PaymentStateInitial;

  const factory PaymentState.loading() = PaymentStateLoading;

  const factory PaymentState.success(PaymentAuthResponse paymentAuthResponse) =
      PaymentStateSuccess;

  const factory PaymentState.error({required String error}) = PaymentStateError;

  const factory PaymentState.successOrder(OrderResponse orderResponse) =
      OrderStateSuccess;

  const factory PaymentState.successPaymentKey(
      PaymentKeyResponse paymentKeyResponse) = PaymentKeySuccess;

  const factory PaymentState.successWalletUrl(WalletResponse response) =
      PaymentWalletUrl;
}
// flutter pub run build_runner watch --delete-conflicting-outputs
