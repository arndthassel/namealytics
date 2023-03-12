import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:namealytics/feature/api_service.dart';
import 'package:namealytics/feature/data_model.dart';

part 'get_age_event.dart';
part 'get_age_state.dart';
part 'get_age_bloc.freezed.dart';

class GetAgeBloc extends Bloc<GetAgeEvent, GetAgeState> {
  final apiService = ApiService();
  GetAgeBloc() : super(_Initial()) {
    on<GetAgeEvent>(
      (event, emit) {
        event.when(
          getAgePressed: (name) {
            emit(const _Loading());
            apiService.getAge(name).then(
                  (analysis) => emit(
                    _Success(analysis: analysis),
                  ),
                );
          },
          restartPressed: () => emit(const _Initial()),
        );
      },
    );
  }
}
