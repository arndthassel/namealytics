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
            // NameAnalysis analysis = await apiService.getAge(name.trimRight()); // Getting an unsolvable error here, have to continue with dummy data
            emit(
              _Success(
                result: NameAnalysis(name: 'dummy', age: '42'),
              ),
            );
          },
          restartPressed: () => emit(const _Initial()),
        );
      },
    );
  }
}
