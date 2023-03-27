import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resala/data/models/user/user_model.dart';
import 'package:resala/data/repository/auth/auth_repo.dart';
import 'package:resala/shared/cache/storage.dart';
import 'package:resala/shared/error/failuers.dart';

import 'login_state.dart';

class LoginBloc extends Cubit<LoginState> {
  LoginBloc({required this.authRepoImpl}) : super(const LoginState.initial());

  static LoginBloc of(BuildContext context) {
    return BlocProvider.of<LoginBloc>(context);
  }

  final AuthRepoImpl authRepoImpl;
  UserModel? userModel;

  bool isVisible = true;
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  login() async {
    emit(const LoginState.loading());
    try {
      final result = await authRepoImpl.login(userName: userNameController.text, password: passController.text);
      result.fold(
        (l) {
          emit(LoginState.error(failure: l));
          debugPrint('================= Login (Bloc): Failed => $l ');

        },
        (r) {
          userModel = r;
          KStorage.i.setToken(userModel?.token ?? '');
          // KStorage.i.setUserInfo(userModel);
          emit(LoginState.success(loginModel: userModel!));
          debugPrint('================= Login (Bloc): Success => $r ');
        },
      );
    } catch (e) {
      debugPrint('================= Login (Bloc) (catch):  $e');

      emit(const LoginState.error(failure: KFailure.someThingWrongPleaseTryAgain()));
    }
  }

  togglePassV() {
    isVisible = !isVisible;
    emit(const LoginState.loading());
    emit(const LoginStateInitial());
  }
}
