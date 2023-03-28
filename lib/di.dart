import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:resala/data/repository/auth/auth_repo.dart';
import 'package:resala/data/repository/get_data/get_data_repo.dart';
import 'package:resala/logic/donation_faces/donation_faces_bloc.dart';
import 'package:resala/logic/humancases/human_cases_bloc.dart';
import 'package:resala/logic/login/login_bloc.dart';
import 'package:resala/logic/register/register_bloc.dart';
import 'package:resala/payment/auth_payment/auth_payment_bloc.dart';
import 'package:resala/payment/data/payment_repo.dart';
import 'logic/core/api_client/api_client_bloc.dart';
import 'logic/core/settings/settings_cubit.dart';
import 'shared/api_client/api_client/api_client_impl.dart';
import 'shared/observer.dart';

abstract class Di {
  static final GetIt _i = GetIt.instance;

  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await GetStorage.init();
    Bloc.observer = MyBlocObserver();

    _i.registerLazySingleton(() => DioClientImpl(apiClientBloc: _i()));
    _i.registerLazySingleton(() => ApiClientBloc());
    _i.registerLazySingleton(() => AuthRepoImpl());
    _i.registerLazySingleton(() => PaymentRepoImp());
    _i.registerLazySingleton(() => GetDataRepoImp());
    _i.registerLazySingleton(() => SettingsBloc());
    _i.registerFactory(() => PaymentBloc(paymentRepoImp: _i()));
    _i.registerFactory(() => LoginBloc(authRepoImpl: _i()));
    _i.registerFactory(() => RegisterBloc(authRepoImpl: _i()));
    _i.registerFactory(() => HumanCasesBloc(repoImp: _i()));
    _i.registerFactory(() => DonationFacesBloc(repoImp: _i()));

  }

  static DioClientImpl get dioClient => _i.get<DioClientImpl>();

  static ApiClientBloc get apiClientBloc => _i.get<ApiClientBloc>();

  static SettingsBloc get settingsBloc => _i.get<SettingsBloc>();
  static PaymentBloc get payment => _i.get<PaymentBloc>();
  static LoginBloc get login => _i.get<LoginBloc>();
  static RegisterBloc get register => _i.get<RegisterBloc>();
  static HumanCasesBloc get humanCases => _i.get<HumanCasesBloc>();
  static DonationFacesBloc get donationFaces => _i.get<DonationFacesBloc>();
}
