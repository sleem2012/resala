import 'package:resala/di.dart';
import 'package:resala/payment/data/model/order_params.dart';
import 'package:resala/payment/data/model/order_response_model.dart';
import 'package:resala/payment/data/model/payment_auth_response_model.dart';
import 'package:resala/payment/data/model/payment_key_params.dart';
import 'package:resala/payment/data/model/payment_key_response.dart';
import 'package:resala/shared/api_client/dio_client_helper.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../../shared/api_client/endpoints.dart';
import '../../shared/api_client/interceptor.dart';
import '../../shared/error/failuers.dart';


abstract class PaymentRepoAbs {
  Future<Either<KFailure, PaymentAuthResponse>> paymentAuth();
  Future<Either<KFailure, OrderResponse>> paymentOrder(OrderPrams orderPrams);
  Future<Either<KFailure, PaymentKeyResponse>> paymentKey(PaymentKeyPrams paymentKeyPrams);
}

class PaymentRepoImp implements PaymentRepoAbs {

  static BaseOptions options = BaseOptions(
    baseUrl: KEndPoints.baseUrl,
    contentType: 'application/json',
    connectTimeout: 60000,
    receiveTimeout: 60000,
    sendTimeout: 60000,
    validateStatus: (status) => status! < 500,
  );

  final _dio = Dio(options)..interceptors.add(PrettyDioLogger(requestBody: true));

  @override
  Future<Either<KFailure, PaymentAuthResponse>> paymentAuth() async {

    Future<Response<dynamic>> func = _dio.post(
      KEndPoints.getAuthToken,
      options: Options(
        contentType: 'application/json',
        sendTimeout: 60000,
        validateStatus: (status) => status! < 500,
        headers: {},
      ),
      data: {
        "api_key":
            KEndPoints.paymentApiKey
      },
    );
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(PaymentAuthResponse.fromJson(r)),
    );
  }

  @override
  Future<Either<KFailure, OrderResponse>> paymentOrder(OrderPrams orderPrams) async {
    Future<Response<dynamic>> func = _dio.post(KEndPoints.getOrderId, data: orderPrams);
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(OrderResponse.fromJson(r)),
    );
  }

  @override
  Future<Either<KFailure, PaymentKeyResponse>> paymentKey(PaymentKeyPrams paymentKeyPrams) async {
    Future<Response<dynamic>> func = _dio.post(KEndPoints.getPaymentRequest, data: paymentKeyPrams);
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(PaymentKeyResponse.fromJson(r)),
    );
  }
}
