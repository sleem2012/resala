import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:resala/payment/auth_payment/auth_payment_bloc.dart';
import 'package:resala/payment/auth_payment/auth_payment_state.dart';
import 'package:resala/payment/data/model/transaction_response_model.dart';
import 'package:resala/shared/api_client/api_client/endpoints.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/views/main_screen/main_screen.dart';
import 'package:resala/views/widgets/appbar.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymentWebView extends StatelessWidget {
  final Widget child;
  final Function(TransactionParams url) onSuccess;

  const PaymentWebView({Key? key, required this.child, required this.onSuccess})
      : super(key: key);

  void navigateToWebView(BuildContext context,{required String finalToken}) {

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (payContext) => Scaffold(
          appBar: const KAppBar(),
          body: WebView(
            initialUrl: KEndPoints.visaUrl+finalToken,
            javascriptMode: JavascriptMode.unrestricted,
            onPageFinished: (url) async {
              if (url.contains('success=true')) {
                debugPrint('url => $url');

                final paymobUrl = Uri.parse(url);
                final transactionParams =
                    TransactionParams.fromJson(paymobUrl.queryParameters);
                onSuccess.call(transactionParams);

                debugPrint('amount => ${transactionParams.amountParam}');

                Future.delayed(const Duration(seconds: 2)).whenComplete(() {
                  Get.offAll(const MainNavPages());
                  KHelper.showSnackBar("تم التبرع بنجاح", isTop: true);
                });
              }
            },
            onPageStarted: (url) async {
              debugPrint('url => $url');
            },
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentBloc, PaymentState>(
      listener: (context, state) {
        state.whenOrNull(
          successPaymentKey: (response) {
            // debugPrint("KEndPoints.finalToken${KEndPoints.finalToken}");
            navigateToWebView(context, finalToken: response.token);
          },
        );
      },
      builder: (context, state) {
        if (state is PaymentStateLoading) {
          return const Center(child: LinearProgressIndicator());
        } else {
          return child;
        }
      },
    );
  }
}
