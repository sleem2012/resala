import 'package:flutter/material.dart';

import 'widgets/appbar.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const KAppBar(),
      body: Container(),
    );
  }
}
