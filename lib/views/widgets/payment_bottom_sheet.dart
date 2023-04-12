import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resala/payment/auth_payment/auth_payment_bloc.dart';
import 'package:resala/payment/data/model/transaction_response_model.dart';
import 'package:resala/payment/view/payment_webview.dart';
import 'package:resala/shared/theme/helper.dart';
import 'package:resala/views/widgets/custom_button.dart';
import 'package:resala/views/widgets/text_field.dart';

class PaymentBottomSheet extends StatelessWidget {
  const PaymentBottomSheet({Key? key, required this.onSuccess})
      : super(key: key);
  final Function(TransactionParams url) onSuccess;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Material(
      child: Container(
        decoration: KHelper.of(context).elevatedBox,
        // height: Get.height * .2,
        padding: const EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              KTextFormField(
                hintText: 'قيمة التبرع',
                keyboardType: TextInputType.number,
                formatter: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                controller: PaymentBloc.of(context).priceController,
                validator: (p0) {
                  if (p0!.isEmpty) {
                    return "الحقل مطلوب";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: KHelper.listPadding,
              ),
              PaymentWebView(
                onSuccess: onSuccess,
                child: KButton(
                  title: "تأكيد",
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      PaymentBloc.of(context).paymentAuth();
                    }
                    // print(human.commonDataModel?.data?[index].id);
                  },
                  icon: Icons.credit_card,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
