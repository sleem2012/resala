import 'package:flutter/material.dart';
import 'package:resala/shared/cache/storage.dart';

import 'package:resala/views/auth/login/login_view.dart';


class KNotLoggedInWidget extends StatelessWidget {
  final Widget child;

  const KNotLoggedInWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (KStorage.i.getToken != null) {
      return child;
    } else {
      return const SizedBox();
    }
  }
}

class KNotLoggedInView extends StatelessWidget {
  final Widget child;

  const KNotLoggedInView({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (KStorage.i.getToken != null) {
      return child;
    } else {
      return const LoginView();
    }
  }
}
