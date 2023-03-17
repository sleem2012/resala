import 'package:get_storage/get_storage.dart';

class KStorageKeys {
  static const String themeMode = 'themeMode';
  static const String locale = 'locale';
  static const String lang = 'language';
  static const String token = 'token';
}

class KStorage {
  static final GetStorage _storage = GetStorage();

  static KStorage? _instance;
  static KStorage get i => _instance!;
  KStorage._internal() {
    _instance = this;
  }
  static KStorage get instance {
    return _instance ?? KStorage._internal();
  }

  setLang(String lang) => _storage.write(KStorageKeys.lang, lang);
  String? get getLang => _storage.read(KStorageKeys.lang);

  setToken(String? token) => _storage.write(KStorageKeys.token, token);

  get delToken => _storage.remove(KStorageKeys.token);

  String? get getToken => _storage.read(KStorageKeys.token);
}
