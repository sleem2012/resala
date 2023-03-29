import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../shared/cache/storage.dart';

@immutable
class ThemeState {}

class ThemeBloc extends Cubit<ThemeState> {
  ThemeBloc() : super(ThemeState());

  final GetStorage storage = GetStorage();
  late ThemeMode _themeMode;
  ThemeMode get themeMode => _themeMode;
  late Locale _locale;
  Locale get locale => _locale;

  static ThemeBloc of(BuildContext context) {
    return BlocProvider.of<ThemeBloc>(context);
  }

  void loadSettings() {
    _themeMode = _readTheme();
    _locale = _readLocale();
    emit(ThemeState());
  }

  void updateThemeMode() {
    if (_themeMode == ThemeMode.dark) {
      _themeMode = ThemeMode.light;
    } else if (_themeMode == ThemeMode.light) {
      _themeMode = ThemeMode.dark;
    } else if (_themeMode == ThemeMode.system && Get.theme.brightness == Brightness.dark) {
      _themeMode = ThemeMode.light;
    } else if (_themeMode == ThemeMode.system && Get.theme.brightness == Brightness.light) {
      _themeMode = ThemeMode.dark;
    }
    storage.write(KStorageKeys.themeMode, _themeMode.toString());
    emit(ThemeState());
  }

  ThemeMode _readTheme() {
    if (storage.read(KStorageKeys.themeMode) == null) {
      return ThemeMode.system;
    } else if (storage.read(KStorageKeys.themeMode) == ThemeMode.dark.toString()) {
      return ThemeMode.dark;
    } else if (storage.read(KStorageKeys.themeMode) == ThemeMode.light.toString()) {
      return ThemeMode.light;
    } else {
      return ThemeMode.system;
    }
  }

  Locale _readLocale() {
    if (storage.read(KStorageKeys.locale) == null) {
      return const Locale('ar');
    } else {
      return Locale(storage.read(KStorageKeys.locale));
    }
  }

  void updateLocale() {
    _locale.languageCode == 'en' ? _locale = const Locale('ar') : _locale = const Locale('en');
    emit(ThemeState());
    Get.updateLocale(_locale);
    storage.write(KStorageKeys.locale, _locale.languageCode);
  }
}
