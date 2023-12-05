import 'package:beebloom_gym_tracker/app/exercises/services/models/get_workout_template_workout_model/get_workout_template_workout_model_request.dart';
import 'package:beebloom_gym_tracker/app/exercises/services/models/get_workout_template_workout_model/get_workout_template_workout_model_response.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../services/exercise_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'exercises_get_workout_template_workout_model_state.dart';

part 'exercises_get_workout_template_workout_model_cubit.freezed.dart';

class ExercisesGetWorkoutTemplateWorkoutModelCubit
    extends BaseCubit<ExercisesGetWorkoutTemplateWorkoutModelState> {
  late ExerciseService exerciseService;

  ExercisesGetWorkoutTemplateWorkoutModelCubit({required super.context})
      : super(
            initialState:
                const ExercisesGetWorkoutTemplateWorkoutModelState.initial()) {
    exerciseService = GetIt.instance<ExerciseService>();
    getWorkoutTemplateWorkoutModelByWorkoutTemplateWorkout(createRequestData());
  }

  GetWorkoutTemplateWorkoutModelRequest createRequestData(
      {String? workoutTemplateId}) {
    final request = GetWorkoutTemplateWorkoutModelRequest(
        workTemplateId: workoutTemplateId);
    return request;
  }

  Future<GetWorkoutTemplateWorkoutModelResponse>
      getWorkoutTemplateWorkoutModelByWorkoutTemplateWorkout(
          GetWorkoutTemplateWorkoutModelRequest request) async {
    return exerciseService
        .getWorkoutTemplateWorkoutModelByWorkoutTemplateWorkout(request)
        .then((value) {
      emit(state.copyWith(
          getWorkoutTemplateWorkoutModelResponse: value,
          getWorkoutTemplateWorkoutModelStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(
          getWorkoutTemplateWorkoutModelStatus: BooleanStatus.error));
      throw error;
    });
  }
}
