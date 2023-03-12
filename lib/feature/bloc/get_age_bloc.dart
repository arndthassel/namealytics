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
        event.when(
          getAgePressed: (name) async {
            emit(const _Loading());
            // This is not working, but I don't know why :(

            // Option 1:
            // NameAnalysis response;

            /* response = await apiService.getAge(name.trimRight()); 
            emit(
              _Success(
                result: NameAnalysis(name: response.name, age: response.age),
              ),
            ); */

            // Option 2:
            await apiService.getAge(name.trimRight()).then(
              (response) {
                emit(
                  _Success(
                    result:
                        NameAnalysis(name: response.name, age: response.age),
                  ),
                );
              },
            );
          },
          restartPressed: () => emit(const _Initial()),
        );
      },
    );
  }
}
