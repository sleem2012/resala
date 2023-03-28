
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:resala/data/models/general/common_data_model.dart';
import 'package:resala/di.dart';
import 'package:resala/shared/api_client/api_client/dio_client_helper.dart';
import 'package:resala/shared/api_client/api_client/endpoints.dart';
import 'package:resala/shared/error/failuers.dart';

abstract class GetDataRepoAbs {
  Future<Either<KFailure, CommonDataModel>> getHumanCases();
  Future<Either<KFailure, CommonDataModel>> getDonationFaces();
}

class GetDataRepoImp implements GetDataRepoAbs {
  @override
  Future<Either<KFailure, CommonDataModel>> getHumanCases() async {
    Future<Response<dynamic>> func = Di.dioClient.get(KEndPoints.humanCases, );
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
          (l) => left(l),
          (r) => right(CommonDataModel.fromJson(r)),
    );
  }  @override
  Future<Either<KFailure, CommonDataModel>> getDonationFaces() async {
    Future<Response<dynamic>> func = Di.dioClient.get(KEndPoints.donationPoints, );
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
          (l) => left(l),
          (r) => right(CommonDataModel.fromJson(r)),
    );
  }


}
