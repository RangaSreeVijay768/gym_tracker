import 'package:beebloom_gym_tracker/app/core/logger/log.dart';
import 'package:beebloom_gym_tracker/app/exercises/services/models/get_all_exercises/get_all_exercises_request.dart';
import 'package:beebloom_gym_tracker/app/exercises/services/models/get_all_exercises/get_all_exercises_response.dart';
import 'package:beebloom_gym_tracker/app/sessions/widgets/sessions_create_gym_session_exercise/sessions_create_gym_session_exercise_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../entities/exercises/exercise.dart';
import '../../services/exercise_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'exercises_get_all_exercises_state.dart';

part 'exercises_get_all_exercises_cubit.freezed.dart';

class ExercisesGetAllExercisesCubit
    extends BaseCubit<ExercisesGetAllExercisesState> {
  late ExerciseService exerciseService;

  ExercisesGetAllExercisesCubit({required super.context})
      : super(initialState: ExercisesGetAllExercisesState.initial()) {
    exerciseService = GetIt.instance<ExerciseService>();
    getAllExercises(createRequestData());
  }

  GetAllExercisesRequest createRequestData() {
    final request = GetAllExercisesRequest();
    return request;
  }

  Future<GetAllExercisesResponse> getAllExercises(
      GetAllExercisesRequest request) async {
    return exerciseService.getAllExercises(request).then((value) {
      emit(state.copyWith(
          getAllExercisesResponse: value,
          getAllExercisesStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(getAllExercisesStatus: BooleanStatus.error));
      throw error;
    });
  }


  void selectExercise(int index) {
    final List<dynamic> selectedExercises = List.from(state.selectedExercises);

    if (selectedExercises.contains(index)) {
      selectedExercises.remove(index);
    } else {
      selectedExercises.add(index);
    }

    emit(state.copyWith(selectedExercises: selectedExercises));
  }

}
