import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../services/exercise_service.dart';
import '../../services/models/get_workout_template_model/get_workout_template_model_request.dart';
import '../../services/models/get_workout_template_model/get_workout_template_model_response.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'exercises_get_workout_template_model_state.dart';

part 'exercises_get_workout_template_model_cubit.freezed.dart';

class ExercisesGetWorkoutTemplateModelCubit
    extends BaseCubit<ExercisesGetWorkoutTemplateModelState> {
  late ExerciseService exerciseService;
  ExercisesGetWorkoutTemplateModelCubit({required super.context})
      : super(initialState: ExercisesGetWorkoutTemplateModelState.initial()){
    exerciseService = GetIt.instance<ExerciseService>();
  }


  GetWorkoutTemplateModelRequest createRequestData(
      {String? workoutTemplateId}) {
    final request = GetWorkoutTemplateModelRequest(
        workTemplateId: workoutTemplateId);
    return request;
  }

  Future<GetWorkoutTemplateModelResponse>
  getWorkoutTemplateWorkoutModelByWorkoutTemplateWorkout(
      GetWorkoutTemplateModelRequest request) async {
    return exerciseService
        .getWorkoutTemplateModelByWorkoutTemplate(request)
        .then((value) {
      emit(state.copyWith(
          getWorkoutTemplateModelResponse: value,
          getWorkoutTemplateModelStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(
          getWorkoutTemplateModelStatus: BooleanStatus.error));
      throw error;
    });
  }

}
