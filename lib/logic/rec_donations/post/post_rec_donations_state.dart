import 'package:resala/shared/error/failuers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'post_rec_donations_state.freezed.dart';

@freezed
 class PostRecDonationsState with _$PostRecDonationsState {
  const factory PostRecDonationsState.initial() = PostRecDonationsStateInitial;
  const factory PostRecDonationsState.loading() = PostRecDonationsStateLoading;
  const factory PostRecDonationsState.success() = PostRecDonationsStateSuccess;
  const factory PostRecDonationsState.error({required KFailure failure}) = PostRecDonationsStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs


