import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resala/payment/data/model/order_params.dart';
import 'package:resala/payment/data/model/payment_key_params.dart';
import 'package:resala/payment/data/payment_repo.dart';
import 'package:resala/shared/api_client/api_client/endpoints.dart';
import 'package:resala/shared/error/failuers.dart';


import '../../../shared/localization/trans.dart';
import 'auth_payment_state.dart';

class PaymentBloc extends Cubit<PaymentState> {
  PaymentBloc({required this.paymentRepoImp}) : super(const PaymentState.initial());

  static PaymentBloc of(BuildContext context) => BlocProvider.of<PaymentBloc>(context);

  final PaymentRepoImp paymentRepoImp;
 TextEditingController priceController=TextEditingController();
  Future paymentAuth() async {
    try {
      emit(const PaymentState.loading());
      final result = await paymentRepoImp.paymentAuth();
      result.fold(
        (l) {
          emit(PaymentState.error(error: KFailure.toError(l)));
          debugPrint('================= PaymentBloc  paymentAuth: ${KFailure.toError(l)}');
        },
        (r) {

          debugPrint('=================token ${r.token} : ');




          emit(PaymentState.success(r));
          debugPrint('=================${r.token}');
          // var userData = KStorage.i.getUser!;
          paymentOrder(
            orderPrams: OrderPrams(
              amountCents: (priceController.text*100).toString(),
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
          debugPrint('================= PaymentBloc paymentOrder : ${KFailure.toError(l)}');
          emit(PaymentState.error(error: KFailure.toError(l)));
        },
        (r) {
          // var userData = KStorage.i.getUser!;
          paymentKey(
            paymentKeyPrams: PaymentKeyPrams(
              currency: "EGP",
              amountCents: r.amountCents.toString(),
              authToken: token,
              orderId: r.id.toString(),
              expiration: 3600,
              integrationId: KEndPoints.integrationIdCard,

              billingData: BillingData(
                email: "userData.email",
                country: "userData.country",
                state: 'asd ad',
                apartment: 'da sdada sd ',
                building: 'as dasd as d',
                city: 'gf gg f',
                floor: 'hg hg h',
                street: 'ewewewe',
                firstName: "userData.name",
                lastName: "userData.name",
                phoneNumber: "userData.phone",
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
          debugPrint('================= PaymentBloc  paymentKey: ${KFailure.toError(l)}');
          emit(PaymentState.error(error: KFailure.toError(l)));
        },
        (r) {
          emit(PaymentState.successPaymentKey(r));
          KEndPoints.finalToken=r.token;
        },
      );
    } catch (e) {
      debugPrint('================= Auth Bloc (Catch): ${e.toString()} ');
      emit(PaymentState.error(error: Tr.get.try_again));
      rethrow;
    }
  }
}
