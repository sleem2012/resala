import 'dart:io';
import 'package:dio/dio.dart';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import '../error/failuers.dart';
import '../theme/helper.dart';

abstract class ApiClientHelper {
  static Future<Either<KFailure, dynamic>> responseToModel({required Future<Response<dynamic>> func}) async {
    if (await ConnectivityCheck.call()) {
      try {
        final response = await func;
        if (response.statusCode == 200) {
          if (response.data['status'] == 'error') {
            KHelper.showSnackBar(response.data['message']);
          }
          return right(response.data);
        }  else if (response.statusCode == 500) {
          return left(KFailure.error(response.data));
        } else {
          return left( KFailure.error(response.data.toString()));
        }
      } on DioError catch (e) {
        debugPrint('=================>> DioError : ${e.message}');
        switch (e.type) {
          case DioErrorType.connectTimeout:
            return left(const KFailure.error("Request Time out"));
          case DioErrorType.receiveTimeout:
            return left(const KFailure.error("Receive Time out"));
          case DioErrorType.response:
            return left(KFailure.error(e.response?.data['message']?['value'].toString() ?? ''));
          case DioErrorType.other:
            if (e.error != null && e.error is SocketException) {
              return left(KFailure.offline(option: e.requestOptions));
            } else {
              debugPrint('=================> 1');
              return left(const KFailure.someThingWrongPleaseTryAgain());
            }
          default:
            debugPrint('=================> 2');

            return left(const KFailure.someThingWrongPleaseTryAgain());
        }
      } catch (e) {
        debugPrint('=================> 3');
        return left(KFailure.error(e.toString()));
      }
    } else {
      return left(const KFailure.offline());
    }
  }
}

abstract class ConnectivityCheck {
  static final Connectivity _connectivity = Connectivity();

  static Future<bool> call() async {
    var connectivityResult = await (_connectivity.checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      return false;
    } else {
      return true;
    }
  }

  static Stream<ConnectivityResult> get connectionStream {
    return _connectivity.onConnectivityChanged;
  }
}
