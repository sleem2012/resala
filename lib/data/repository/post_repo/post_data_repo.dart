import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:resala/data/models/recyle_form_model.dart';
import 'package:resala/di.dart';
import 'package:resala/shared/api_client/api_client/dio_client_helper.dart';
import 'package:resala/shared/api_client/api_client/endpoints.dart';
import 'package:resala/shared/error/failuers.dart';

abstract class _PostDataRepo {
  Future<Either<KFailure, Unit>> storeMandob({required String chievment, required String notes});

  Future<Either<KFailure, Unit>> storeVolunteer({required String age, required String college, required int donationPointId});

  Future<Either<KFailure, Unit>> monthlyDonations({required String value, required String date, required int donationPointId});

  Future<Either<KFailure, Unit>> storeDonation({required String amount, required String transactionId, required int donationPointId});

  Future<Either<KFailure, Unit>> storeRecycle({required RecycleFormModel model});
}

class PostDataRepoImpl implements _PostDataRepo {
  PostDataRepoImpl();

  @override
  Future<Either<KFailure, Unit>> storeMandob({required String chievment, required String notes}) async {
    Future<Response<dynamic>> func = Di.dioClient.post(
      KEndPoints.storeMandob,
      data: {
        "chievment": chievment,
        "notes": notes,
      },
    );

    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  @override
  Future<Either<KFailure, Unit>> storeVolunteer({required String age, required String college, required int donationPointId}) async {
    Future<Response<dynamic>> func = Di.dioClient.post(
      KEndPoints.storeVolunteer,
      data: {
        "age": age,
        "college": college,
        "donationpoint_id": donationPointId,
      },
    );

    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  @override
  Future<Either<KFailure, Unit>> monthlyDonations({required String value, required String date, required int donationPointId}) async {
    Future<Response<dynamic>> func = Di.dioClient.post(
      KEndPoints.monthlyDonations,
      data: {
        "value": value,
        "date": date,
        "donationpoint_id": donationPointId,
      },
    );

    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  @override
  Future<Either<KFailure, Unit>> storeDonation({required String amount, required String transactionId, required int donationPointId}) async {
    Future<Response<dynamic>> func = Di.dioClient.post(
      KEndPoints.storeDonation,
      data: {
        "amount": amount,
        "transaction_id": transactionId,
        "donationpoint_id": donationPointId,
      },
    );

    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  } @override
  Future<Either<KFailure, Unit>> storeRecycle({required RecycleFormModel model}) async {
    Future<Response<dynamic>> func = Di.dioClient.post(
      KEndPoints.storeRecycle,
      data: model.toJson()
    );

    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }
}
