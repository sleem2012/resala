import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:resala/data/models/user/register_model.dart';
import 'package:resala/data/models/user/user_model.dart';
import 'package:resala/di.dart';
import 'package:resala/shared/api_client/api_client/dio_client_helper.dart';
import 'package:resala/shared/api_client/api_client/endpoints.dart';
import 'package:resala/shared/error/failuers.dart';

abstract class _AuthRepo {
  Future<Either<KFailure, Unit>> register(RegisterModel registerModel);

  Future<Either<KFailure, UserModel>> login({required String userName, required String password});
}

class AuthRepoImpl implements _AuthRepo {
  AuthRepoImpl();

  @override
  Future<Either<KFailure, Unit>> register(RegisterModel registerModel) async {
    Future<Response<dynamic>> func = Di.dioClient.postWithFiles(KEndPoints.register, data: registerModel.toJson());

    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  @override
  Future<Either<KFailure, UserModel>> login({required String userName, required String password}) async {
    Future<Response<dynamic>> func = Di.dioClient.post(
      KEndPoints.login,
      data: {
        "username": userName,
        "password": password,
      },
    );

    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(UserModel.fromJson(r)),
    );
  }
}
