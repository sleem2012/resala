import 'package:flutter/material.dart';

import '../../../shared/localization/trans.dart';
import '../../../shared/theme/text_theme.dart';
import '../appbar.dart';


class KErrorView extends StatelessWidget {
  final void Function()? onTryAgain;
  final String? error;

  const KErrorView({Key? key, this.onTryAgain, this.error}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const KAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              error ?? Tr.get.try_later,
              style: KTextStyle.of(context).body,
            ),
            //Lottie.asset('assets/animations/error.json'),
            const SizedBox(height: 25),
            if (onTryAgain != null)
              TextButton(
                onPressed: onTryAgain,
                child: Text('try again', style: KTextStyle.of(context).textBtn),
              ),
          ],
        ),
      ),
    );
  }
}
