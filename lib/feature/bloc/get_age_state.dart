part of 'get_age_bloc.dart';

@freezed
class GetAgeState with _$GetAgeState {
  const factory GetAgeState.initial() = _Initial;
  const factory GetAgeState.loading() = _Loading;
  const factory GetAgeState.success({required NameAnalysisModel analysis}) =
      _Success;
}
