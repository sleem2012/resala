import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resala/logic/setting/setting_bloc.dart';
import 'package:resala/logic/setting/setting_state.dart';
import 'package:resala/views/main_screen/main_screen.dart';
import 'package:resala/views/splash_screen/widget/splash_body.dart';
import 'package:resala/views/widgets/error/error_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
 {



  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingBloc, SettingState>(
      builder: (context, state) {
        return state.maybeWhen(orElse: () {
          return  const SplashBody();
        }, error: (error) {
          return KErrorView(
            error: error,
            onTryAgain: SettingBloc.of(context).get,
          );
        }, success: (model) {

            return const MainNavPages();
        });
      },
    );
  }
}
