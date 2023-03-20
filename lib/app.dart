import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:resala/views/auth/login/login_view.dart';
import 'di.dart';
import 'logic/core/api_client/api_client_bloc.dart';
import 'logic/core/api_client/api_client_state.dart';
import 'logic/core/settings/settings_cubit.dart';
import 'shared/error/failuers.dart';
import 'shared/theme/helper.dart';
import 'shared/localization/trans.dart';
import 'shared/theme/theme_data.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => Di.settingsBloc..loadSettings()),
        BlocProvider(create: (context) => Di.apiClientBloc),
      ],
      child: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return BlocListener<ApiClientBloc, ApiClientState>(
            listener: (context, state) {
              state.whenOrNull(
                error: (failure) {
                  KHelper.showSnackBar(KFailure.toError(failure));
                },
              );
            },
            child: GetMaterialApp(
              debugShowCheckedModeBanner: false,
              localizationsDelegates: Tr.delegates,
              supportedLocales: Tr.supportedLocales,
              locale: SettingsBloc.of(context).locale,
              localeResolutionCallback: (Locale? locale, Iterable<Locale> iterable) {
                return SettingsBloc.of(context).locale;
              },
              theme: KThemeData.light,
              // darkTheme: KThemeData.dark,
              themeMode: SettingsBloc.of(context).themeMode,
              home: Builder(
                builder: (context) {
                  return AnnotatedRegion<SystemUiOverlayStyle>(
                    value: KThemeData.of(context).overlayStyle,
                    child: const LoginView(),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
