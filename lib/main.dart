import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'app.dart';
import 'di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await Di.init();
  runApp(const MyApp());
}
