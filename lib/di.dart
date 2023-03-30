import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:resala/data/repository/auth/auth_repo.dart';
import 'package:resala/data/repository/get_data/get_data_repo.dart';
import 'package:resala/data/repository/post_repo/post_data_repo.dart';
import 'package:resala/logic/core/theme/theme_cubit.dart';
import 'package:resala/logic/donation_faces/donation_faces_bloc.dart';
import 'package:resala/logic/humancases/human_cases_bloc.dart';
import 'package:resala/logic/login/login_bloc.dart';
import 'package:resala/logic/my_participation/my_participation_bloc.dart';
import 'package:resala/logic/register/register_bloc.dart';
import 'package:resala/logic/store_donation/store_donation_bloc.dart';
import 'package:resala/payment/auth_payment/auth_payment_bloc.dart';
import 'package:resala/payment/data/payment_repo.dart';
import 'logic/core/api_client/api_client_bloc.dart';
import 'logic/mandop/mandop_bloc.dart';
import 'logic/monthly_donations/monthly_bloc.dart';
import 'logic/setting/setting_bloc.dart';
import 'logic/store_recycle/store_recycle_bloc.dart';
import 'logic/store_volunteer/volunteer_bloc.dart';
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
    _i.registerLazySingleton(() => PostDataRepoImpl());
    _i.registerLazySingleton(() => ThemeBloc());
    _i.registerFactory(() => PaymentBloc(paymentRepoImp: _i()));
    _i.registerFactory(() => LoginBloc(authRepoImpl: _i()));
    _i.registerFactory(() => RegisterBloc(authRepoImpl: _i()));
    _i.registerFactory(() => HumanCasesBloc(repoImp: _i()));
    _i.registerFactory(() => DonationFacesBloc(repoImp: _i()));
    _i.registerFactory(() => MyParticipationBloc(repoImp: _i()));
    _i.registerFactory(() => SettingBloc(repoImp: _i()));
    _i.registerFactory(() => MandopBloc(repoImpl: _i()));
    _i.registerFactory(() => VolunteerBloc(repoImpl: _i()));
    _i.registerFactory(() => MonthlyBloc(repoImpl: _i()));
    _i.registerFactory(() => StoreDonationBloc(repoImpl: _i()));
    _i.registerFactory(() => StoreRecycleBloc(repoImpl: _i()));

  }

  static DioClientImpl get dioClient => _i.get<DioClientImpl>();

  static ApiClientBloc get apiClientBloc => _i.get<ApiClientBloc>();

  static ThemeBloc get themeBloc => _i.get<ThemeBloc>();
  static PaymentBloc get payment => _i.get<PaymentBloc>();
  static LoginBloc get login => _i.get<LoginBloc>();
  static RegisterBloc get register => _i.get<RegisterBloc>();
  static HumanCasesBloc get humanCases => _i.get<HumanCasesBloc>();
  static DonationFacesBloc get donationFaces => _i.get<DonationFacesBloc>();
  static MyParticipationBloc get myParticipation => _i.get<MyParticipationBloc>();
  static SettingBloc get setting => _i.get<SettingBloc>();
  static MandopBloc get mandop => _i.get<MandopBloc>();
  static VolunteerBloc get volunteer => _i.get<VolunteerBloc>();
  static MonthlyBloc get monthly => _i.get<MonthlyBloc>();
  static StoreDonationBloc get storeDonation => _i.get<StoreDonationBloc>();
  static StoreRecycleBloc get storeRecycleBloc => _i.get<StoreRecycleBloc>();
}
