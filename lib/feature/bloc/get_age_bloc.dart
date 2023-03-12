import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:namealytics/feature/api_service.dart';
import 'package:namealytics/feature/data_model.dart';

part 'get_age_event.dart';
part 'get_age_state.dart';
part 'get_age_bloc.freezed.dart';

class GetAgeBloc extends Bloc<GetAgeEvent, GetAgeState> {
  final apiService = ApiService();
  GetAgeBloc() : super(const _Initial()) {
    on<GetAgeEvent>(
      (event, emit) async {
        await event.when<Future>(
          getAgePressed: (name) async {
            await getAgePressed(event, emit, name);
          },
          restartPressed: () async => emit(const GetAgeState.initial()),
        );
      },
    );
  }

  getAgePressed(event, emit, name) async {
    emit(
      const GetAgeState.loading(),
    );
    try {
      await apiService.getAge(name.trimRight()).then(
        (response) async {
          emit(
            GetAgeState.success(
              result: response,
            ),
          );
        },
      );
    } on NoNameEnteredFailure {
      emit(
        const GetAgeState.failure(
          message: 'Please enter a name!',
        ),
      );
    } on RequestFailure {
      emit(
        const GetAgeState.failure(
          message:
              'The service is not available at the moment. Please try again later.',
        ),
      );
    } on NameNotFoundFailure {
      emit(
        const GetAgeState.failure(
          message:
              'We have no data available for this name. Please try another name.',
        ),
      );
    }
  }
}
