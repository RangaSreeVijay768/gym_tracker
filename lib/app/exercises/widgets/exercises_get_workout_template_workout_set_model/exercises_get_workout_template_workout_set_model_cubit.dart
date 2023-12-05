import 'package:beebloom_gym_tracker/app/exercises/services/models/get_workout_template_workout_set_model/get_workout_template_workout_set_model_request.dart';
import 'package:beebloom_gym_tracker/app/exercises/services/models/get_workout_template_workout_set_model/get_workout_template_workout_set_model_response.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../services/exercise_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'exercises_get_workout_template_workout_set_model_state.dart';

part 'exercises_get_workout_template_workout_set_model_cubit.freezed.dart';

class ExercisesGetWorkoutTemplateWorkoutSetModelCubit
    extends BaseCubit<ExercisesGetWorkoutTemplateWorkoutSetModelState> {
  late ExerciseService exerciseService;
  ExercisesGetWorkoutTemplateWorkoutSetModelCubit({required super.context})
      : super(
      initialState: ExercisesGetWorkoutTemplateWorkoutSetModelState.initial()){
    exerciseService = GetIt.instance<ExerciseService>();
  }


  GetWorkoutTemplateWorkoutSetModelRequest createRequestData(
      {String? workoutTemplateId}) {
    final request = GetWorkoutTemplateWorkoutSetModelRequest(
        workoutTemplateId: workoutTemplateId);
    return request;
  }

  Future<GetWorkoutTemplateWorkoutSetModelResponse>
  getWorkoutTemplateWorkoutModelByWorkoutTemplateWorkout(
      GetWorkoutTemplateWorkoutSetModelRequest request) async {
    return exerciseService
        .getWorkoutTemplateWorkoutSetModelByWorkoutTemplateWorkoutSet(request)
        .then((value) {
      emit(state.copyWith(
          getWorkoutTemplateWorkoutSetModelResponse: value,
          getWorkoutTemplateWorkoutSetModelStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(
          getWorkoutTemplateWorkoutSetModelStatus: BooleanStatus.error));
      throw error;
    });
  }

}
