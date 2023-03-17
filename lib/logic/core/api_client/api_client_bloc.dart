import 'dart:async';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../shared/api_client/dio_client_helper.dart';
import '../../../../shared/cache/storage.dart';
import '../../../../shared/error/failuers.dart';
import '../../../di.dart';
import 'api_client_state.dart';

class ApiClientBloc extends Cubit<ApiClientState> {
  ApiClientBloc() : super(const ApiClientState.initial());

  static ApiClientBloc of(BuildContext context) {
    return BlocProvider.of<ApiClientBloc>(context);
  }

  Future<void> onErrorCallBack(DioError error) async {
    emit(const ApiClientState.initial());

    if (error.type == DioErrorType.response && error.response!.statusCode == 401) {
      emit(const ApiClientState.error(failure: KFailure.userNotFound()));
    } else if (error.error is SocketException) {
      emit(const ApiClientState.error(failure: KFailure.offline()));
    } else {
      emit(const ApiClientState.error(failure: KFailure.someThingWrongPleaseTryAgain()));
    }
  }

  onResponseCallBack(Response<dynamic> response) {
    emit(const ApiClientState.initial());

    if (response.statusCode == 200) {
      return;
    } else if (response.statusCode == 404) {
      emit(const ApiClientState.error(failure: KFailure.someThingWrongPleaseTryAgain()));
    } else if (response.statusCode == 500) {
      emit(const ApiClientState.error(failure: KFailure.server()));
    } else {
      emit(const ApiClientState.error(failure: KFailure.someThingWrongPleaseTryAgain()));
    }
  }

  onRequestCallBack(RequestOptions request) {
    final token = KStorage.i.getToken;
    final language = KStorage.i.getLang ?? "en";
    request.headers.addAll({'Authorization': "Bearer $token"});
    request.headers.addAll({"lang": language});
  }

  Future<Response> scheduleRetry(RequestOptions options) {
    final responseConpleter = Completer<Response>();
    late StreamSubscription subscription;
    debugPrint('================= Schedule Retry For: ${options.path} ');
    emit(const ApiClientState.error(failure: KFailure.offline()));

    subscription = ConnectivityCheck.connectionStream.listen((event) {
      if (event != ConnectivityResult.none) {
        responseConpleter.complete(
          Di.dioClient.request(
            options.path,
            cancelToken: options.cancelToken,
            data: options.data,
            onReceiveProgress: options.onReceiveProgress,
            onSendProgress: options.onSendProgress,
            params: options.queryParameters,
          ),
        );
        subscription.cancel();
      }
    });
    return responseConpleter.future;
  }
}
