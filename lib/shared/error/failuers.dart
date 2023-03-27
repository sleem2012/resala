import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resala/data/models/error/error_422_model.dart';
import '../localization/trans.dart';

part 'failuers.freezed.dart';

@freezed
class KFailure with _$KFailure {
  const factory KFailure.error(String error) = KFailureError;

  const factory KFailure.server() = KFailureServer;

  const factory KFailure.offline({RequestOptions? option}) = KFailureOffline;

  const factory KFailure.userNotFound() = KFailureUserNotFound;

  const factory KFailure.locationDenied() = KFailureLocationDenied;

  const factory KFailure.locationDisabled() = KFailureLocationDisabled;

  const factory KFailure.locationDeniedPermanently() = KFailureLocationDeniedPermanently;

  const factory KFailure.someThingWrongPleaseTryAgain() = KFailureSomeThingWrongPleaseTryAgain;
  const factory KFailure.error401({required String error}) = KFailureError401;

  const factory KFailure.error422({required Error422Model error422model}) = KFailureError422;

  static String toError(KFailure failure) {
    return failure.when(
      server: () => Tr.get.try_later,
      offline: (option) => Tr.get.no_connection,
      userNotFound: () => "User Not Found",
      locationDisabled: () => Tr.get.location_disabled,
      error: (error) => error,
      locationDenied: () => Tr.get.location_denaid,
      locationDeniedPermanently: () => Tr.get.location_denaid_permanently,
      someThingWrongPleaseTryAgain: () => Tr.get.try_later,
      error401: (error) => error,

      error422: (errorModel) {

        if (errorModel.hasSingleError) {
          return errorModel.error;
        } else {
          List<dynamic> errorMessages = [];

          errorModel.errors.forEach((key, value) {
            errorMessages.addAll(value);
          });
          return errorMessages.join('\n');
          // return List<List>.from(errorModel.errors.values).map((e) => e.first).toString();
        }
      },
    );
  }
}
// flutter pub run build_runner watch --delete-conflicting-outputs
