import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:resala/data/models/recyle_form_model.dart';
import 'package:resala/data/models/store_model_model.dart';
import 'package:resala/di.dart';
import 'package:resala/shared/api_client/api_client/dio_client_helper.dart';
import 'package:resala/shared/api_client/api_client/endpoints.dart';
import 'package:resala/shared/error/failuers.dart';

abstract class _PostDataRepo {
  Future<Either<KFailure, Unit>> storeMandob({required StoreMandobModel model});

  Future<Either<KFailure, Unit>> storeVolunteer({required String age, required String college, required int donationPointId});

  Future<Either<KFailure, Unit>> monthlyDonations({required String value, required String date, required int donationPointId});

  Future<Either<KFailure, Unit>> postRecDonations({required int donationPointId});

  Future<Either<KFailure, Unit>> storeDonation({required String amount, required String transactionId, required int donationPointId});
  Future<Either<KFailure, Unit>> humanCaseDonation({required int amount, required String transactionId, required int humanCaseId});

  Future<Either<KFailure, Unit>> storeRecycle({required RecycleFormModel model});
}

class PostDataRepoImpl implements _PostDataRepo {
  PostDataRepoImpl();

  @override
  Future<Either<KFailure, Unit>> storeMandob({required StoreMandobModel model}) async {
    Future<Response<dynamic>> func = Di.dioClient.post(
      KEndPoints.storeMandob,
      data: model.toJson()
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
        "activity_id": donationPointId,
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
  }
 @override
  Future<Either<KFailure, Unit>> humanCaseDonation({required int amount, required String transactionId, required int humanCaseId}) async {
    Future<Response<dynamic>> func = Di.dioClient.post(
      KEndPoints.donationHumanCases,
      data: {
        "amount": amount,
        "transaction_id": transactionId,
        "humancase_id": humanCaseId,
      },
    );

    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  @override
  Future<Either<KFailure, Unit>> postRecDonations({required int donationPointId}) async {
    Future<Response<dynamic>> func = Di.dioClient.post(
      KEndPoints.recDonations,
      data: {
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
  Future<Either<KFailure, Unit>> storeRecycle({required RecycleFormModel model}) async {
    Future<Response<dynamic>> func = Di.dioClient.post(KEndPoints.storeRecycle, data: model.toJson());

    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }
}
