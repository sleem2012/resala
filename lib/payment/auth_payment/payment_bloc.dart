import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resala/data/models/general/kslugmodel.dart';
import 'package:resala/payment/data/model/order_params.dart';
import 'package:resala/payment/data/model/payment_key_params.dart';
import 'package:resala/payment/data/payment_repo.dart';
import 'package:resala/shared/api_client/api_client/endpoints.dart';
import 'package:resala/shared/cache/storage.dart';
import 'package:resala/shared/error/failuers.dart';

import '../../../shared/localization/trans.dart';
import 'payment_state.dart';

class PaymentBloc extends Cubit<PaymentState> {
  PaymentBloc({required this.paymentRepoImp})
      : super(const PaymentState.initial());

  static PaymentBloc of(BuildContext context) =>
      BlocProvider.of<PaymentBloc>(context);

  final PaymentRepoImp paymentRepoImp;
  TextEditingController priceController = TextEditingController();
  TextEditingController walletNumberController = TextEditingController();

  Future paymentAuth() async {
    try {
      emit(const PaymentState.loading());
      final result = await paymentRepoImp.paymentAuth();
      result.fold(
        (l) {
          emit(PaymentState.error(error: KFailure.toError(l)));
          debugPrint(
              '================= PaymentBloc  paymentAuth: ${KFailure.toError(l)}');
        },
        (r) {
          emit(PaymentState.success(r));
          // var userData = KStorage.i.getUser!;
          paymentOrder(
            orderPrams: OrderPrams(
              amountCents: (double.parse(priceController.text) * 100).floor(),
              authToken: r.token,
              currency: "EGP",
              deliveryNeeded: "false",
              //   shippingData: ShippingData(
              //     email: "email@yahoo.com",
              //     country: "egypt",
              //     extraDescription: "gfdgdgd",
              //     firstName:" sleem",
              //     lastName: "ahmed",
              //     phoneNumber: "3454354",
              //
              // ),
            ),
            token: r.token,
          );
        },
      );
    } catch (e) {
      debugPrint('================= PaymentBloc (Catch): ${e.toString()} ');
      emit(PaymentState.error(error: Tr.get.try_again));
      rethrow;
    }
  }

  paymentOrder({required OrderPrams orderPrams, token}) async {
    try {
      emit(const PaymentState.loading());
      final result = await paymentRepoImp.paymentOrder(orderPrams);
      result.fold(
        (l) {
          debugPrint(
              '================= PaymentBloc paymentOrder : ${KFailure.toError(l)}');
          emit(PaymentState.error(error: KFailure.toError(l)));
        },
        (r) {
          var userData = KStorage.i.getUserInfo;
          paymentKey(
            paymentKeyPrams: PaymentKeyPrams(
              currency: "EGP",
              amountCents: (r.amountCents).toString(),
              authToken: token,
              orderId: r.id.toString(),
              expiration: 3600,
              integrationId: isWallet?KEndPoints.integrationIdWallet:KEndPoints.integrationIdCard,
              billingData: BillingData(
                email: userData?.user?.email ?? 'uhuhu',
                country: "userData.country",
                state: 'asd ad',
                apartment: 'da sdada sd ',
                building: 'as dasd as d',
                city: 'gf gg f',
                floor: 'hg hg h',
                street: 'ewewewe',
                firstName: userData?.user?.name ?? 'uhuhu',
                lastName: userData?.user?.username ?? 'uhuhu',
                phoneNumber: userData?.user?.phone ?? '01067667676',
              ),
            ),
          );
          emit(PaymentState.successOrder(r));
        },
      );
    } catch (e) {
      debugPrint('================= PaymentBloc (Catch): ${e.toString()} ');
      emit(PaymentState.error(error: Tr.get.try_again));
      rethrow;
    }
  }

  paymentKey({required PaymentKeyPrams paymentKeyPrams}) async {
    try {
      emit(const PaymentState.loading());
      final result = await paymentRepoImp.paymentKey(paymentKeyPrams);
      result.fold(
        (l) {
          debugPrint(
              '================= PaymentBloc  paymentKey: ${KFailure.toError(l)}');
          emit(PaymentState.error(error: KFailure.toError(l)));
        },
        (r) {
          debugPrint('=================token ${r.token} : ');

          if (isWallet) {
            getWalletUrl(finalToken: r.token);
          } else {
            emit(PaymentState.successPaymentKey(r));
          }

          priceController.clear();
        },
      );
    } catch (e) {
      debugPrint('================= Auth Bloc (Catch): ${e.toString()} ');
      emit(PaymentState.error(error: Tr.get.try_again));
      rethrow;
    }
  }

  getWalletUrl({
    required String finalToken,
  }) async {
    try {
      emit(const PaymentState.loading());
      final result = await paymentRepoImp.getWalletUrl(
          finalToken: finalToken, number: walletNumberController.text);
      result.fold(
        (l) {
          debugPrint(
              '================= PaymentBloc  getWalletUrl: ${KFailure.toError(l)}');
          emit(PaymentState.error(error: KFailure.toError(l)));
        },
        (r) {
          emit(PaymentState.successWalletUrl(r));
        },
      );
    } catch (e) {
      debugPrint('================= Auth Bloc (Catch): ${e.toString()} ');
      emit(PaymentState.error(error: Tr.get.try_again));
      rethrow;
    }
  }

  bool isWallet = false;

  setPaymentType({required KSlugModel type}) {
    if (type.slug == KSlugModel.wallet) {
      isWallet = true;
    } else {
      isWallet = false;
    }
    _update;
  }

  get _update {
    emit(const PaymentState.loading());
    emit(const PaymentState.initial());
  }
}
