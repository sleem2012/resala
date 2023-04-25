import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resala/data/models/user/register_model.dart';
import 'package:resala/data/models/user/user_model.dart';
import 'package:resala/data/repository/auth/auth_repo.dart';
import 'package:resala/shared/error/failuers.dart';

import 'register_state.dart';

class RegisterBloc extends Cubit<RegisterState> {
  RegisterBloc({required this.authRepoImpl}) : super(const RegisterState.initial());

  static RegisterBloc of(BuildContext context) {
    return BlocProvider.of<RegisterBloc>(context);
  }

  final AuthRepoImpl authRepoImpl;
  UserModel? userModel;
  RegisterModel registerModel = RegisterModel();
  bool isVisible = true;
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  register() async {
    emit(const RegisterState.loading());
    try {
      registerModel = registerModel.copyWith(
        name: nameController.text,
        email: emailController.text,
        password: passController.text,
        phone: int.parse(phoneController.text),
        username: userNameController.text,
      );
      final result = await authRepoImpl.register(registerModel);
      result.fold(
        (l) {
          emit(RegisterState.error(failure: l));
          debugPrint('================= Login (Bloc): Failed => $l ');
        },
        (r) {
          // KStorage.i.setToken(userModel?.token ?? '');
          // KStorage.i.setUserInfo(userModel);
          emit( const RegisterState.success());
          debugPrint('================= Login (Bloc): Success => $r ');
        },
      );
    } catch (e) {
      debugPrint('================= Login (Bloc) (catch):  $e');

      emit(const RegisterState.error(failure: KFailure.someThingWrongPleaseTryAgain()));
      rethrow;
    }
  }

  togglePassV() {
    isVisible = !isVisible;
    emit(const RegisterState.loading());
    emit(const RegisterState.initial());
  }
}
