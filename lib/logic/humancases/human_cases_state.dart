import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resala/data/models/general/common_data_model.dart';
part 'human_cases_state.freezed.dart';

@freezed
 class HumanCasesState with _$HumanCasesState{
  const factory HumanCasesState.loading() = HumanCasesStateLoading;
  const factory HumanCasesState.success({required CommonDataModel model}) = HumanCasesStateSuccess;
  const factory HumanCasesState.error({required String failure}) = HumanCasesStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs 