import 'package:flutter/material.dart';
import 'app.dart';
import 'di.dart';

void main() async {
  // await GetStorage.init();
  // KStorage.i.erase;
  await Di.init();
  runApp(const MyApp());
}
