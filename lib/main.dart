import 'package:flutter/material.dart';
import 'app.dart';
import 'di.dart';
import 'shared/cache/storage.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await GetStorage.init();
  // KStorage.i.erase;
  await Di.init();
  runApp(const MyApp());
}
