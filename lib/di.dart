import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'logic/core/api_client/api_client_bloc.dart';
import 'logic/core/settings/settings_cubit.dart';
import 'shared/api_client/api_client_impl.dart';
import 'shared/observer.dart';

abstract class Di {
  static final GetIt _i = GetIt.instance;

  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await GetStorage.init();
    Bloc.observer = MyBlocObserver();

    _i.registerLazySingleton(() => DioClientImpl(apiClientBloc: _i()));
    _i.registerLazySingleton(() => ApiClientBloc());
    _i.registerLazySingleton(() => SettingsBloc());
  }

  static DioClientImpl get dioClient => _i.get<DioClientImpl>();
  static ApiClientBloc get apiClientBloc => _i.get<ApiClientBloc>();
  static SettingsBloc get settingsBloc => _i.get<SettingsBloc>();
}
