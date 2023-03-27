import 'dart:async';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resala/di.dart';
import 'package:resala/shared/api_client/api_client/dio_client_helper.dart';
import 'package:resala/shared/cache/storage.dart';
import 'package:resala/shared/error/failuers.dart';
import 'package:resala/shared/theme/helper.dart';


import 'api_client_state.dart';

class ApiClientBloc extends Cubit<ApiClientState> {
  ApiClientBloc() : super(const ApiClientState.initial());

  static ApiClientBloc of(BuildContext context) {
    return BlocProvider.of<ApiClientBloc>(context);
  }

  Future<void> onErrorCallBack(DioError error) async {
    emit(const ApiClientState.initial());
    debugPrint('=================  onErrorCallBack : ');
    if (error.type == DioErrorType.badResponse && error.response!.statusCode == 401) {
      emit(const ApiClientState.error(failure: KFailure.userNotFound()));
      debugPrint('=============== 1 == 1');
    } else if (error.error is SocketException) {
      debugPrint('=============== 1 == 2');
      emit(const ApiClientState.error(failure: KFailure.offline()));
    } else {
      debugPrint('=============== 1 == 3 : ${error.message}');
      emit(const ApiClientState.error(failure: KFailure.someThingWrongPleaseTryAgain()));
    }
  }

  onResponseCallBack(Response<dynamic> response) async {
    emit(const ApiClientState.initial());
    if (response.statusCode == 200) return;
    if (response.statusCode == 500) KHelper.showSnackBar("Server Error ... ${response.statusMessage}");

    // KHelper.showSnackBar(response.data.toString());
    final result = await ApiClientHelper.responseToModel(res: response);
    result.fold((l) => emit(ApiClientState.error(failure: l)), (r) => null);


  }

  onRequestCallBack(RequestOptions request) {
    final token = KStorage.i.getToken;
    // final language = KStorage.i.getLang ?? "en";
    request.headers.addAll({'Authorization': "Bearer $token"});
    // request.headers.addAll({"localization": language});
    request.headers.addAll({"Accept": 'application/json'});
  }

  Future<Response> scheduleRetry(RequestOptions options) {
    final responseCompleter = Completer<Response>();
    late StreamSubscription subscription;
    debugPrint('================= Schedule Retry For: ${options.path} ');
    emit( const ApiClientState.error(failure: KFailure.offline()));

    subscription = ConnectivityCheck.connectionStream.listen((event) {
      if (event != ConnectivityResult.none) {
        responseCompleter.complete(
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
    return responseCompleter.future;
  }
}
