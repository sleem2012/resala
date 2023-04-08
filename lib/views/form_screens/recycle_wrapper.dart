import 'package:flutter/material.dart';
import 'package:resala/shared/cache/storage.dart';
import 'package:resala/views/form_screens/recycle_form_screen.dart';
import 'package:resala/views/rec_donation/rec_donation_screen.dart';

class RecycleWrapper extends StatelessWidget {
  const RecycleWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = KStorage.i.getUserInfo?.user;
    return user?.recycleId != null ? const RecDonationScreen() : const RecycleFormScreen();
  }
}
