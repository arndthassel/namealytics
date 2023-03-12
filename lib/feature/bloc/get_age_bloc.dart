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
            emit(const _Loading());
            await apiService.getAge(name.trimRight()).then(
              (response) async {
                emit(
                  _Success(
                    result: response,
                  ),
                );
              },
            );
          },
          restartPressed: () async => emit(const _Initial()),
        );
      },
    );
  }
}
