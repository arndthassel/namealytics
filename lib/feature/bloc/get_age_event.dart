part of 'get_age_bloc.dart';

@freezed
class GetAgeEvent with _$GetAgeEvent {
  const factory GetAgeEvent.getAgePressed(String name) = _GetAgePressed;
  const factory GetAgeEvent.restartPressed() = _RestartPressed;
}
