import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:resala/data/models/general/setting_model.dart';
import 'package:resala/data/models/user/user_model.dart';

class KStorageKeys {
  static const String themeMode = 'themeMode';
  static const String locale = 'locale';

  static const String token = 'token';
  static const String userModel = 'userModel';
  static const String setting = 'setting';
  static const String isSplashSeen = 'isSplashSeen';
  static const String settings = 'settings';
}

class KStorage {
  KStorage();

  final GetStorage _storage = GetStorage();
  static KStorage i = _kStorage;

  static KStorage get _kStorage {
    if (GetIt.instance.isRegistered<KStorage>()) {
      return GetIt.instance.get<KStorage>();
    } else {
      GetIt.instance.registerLazySingleton(() => KStorage());
      return GetIt.instance.get<KStorage>();
    }
  }

  get erase async => await _storage.erase();

  setToken(String? token) => _storage.write(KStorageKeys.token, token);

  get delToken => _storage.remove(KStorageKeys.token);

  String? get getToken => _storage.read(KStorageKeys.token);

  setUserInfo(UserModel? model) => _storage.write(KStorageKeys.userModel, model?.toJson() as Map<String, dynamic>);

  get delUserInfo => _storage.remove(KStorageKeys.userModel);

  UserModel? get getUserInfo {
    if (_storage.read(KStorageKeys.userModel) != null) {
      return UserModel.fromJson(_storage.read(KStorageKeys.userModel));
    } else {
      return null;
    }
  }

  setSetting(SettingModel? model) => _storage.write(KStorageKeys.setting, model?.toJson() as Map<String, dynamic>);

  SettingModel? get getSetting {
    if (_storage.read(KStorageKeys.setting) != null) {
      return SettingModel.fromJson(_storage.read(KStorageKeys.setting));
    } else {
      return null;
    }
  }


}
