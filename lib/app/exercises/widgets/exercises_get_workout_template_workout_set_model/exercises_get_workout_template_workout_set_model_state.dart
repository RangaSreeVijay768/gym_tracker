part of 'exercises_get_workout_template_workout_set_model_cubit.dart';

@freezed
class ExercisesGetWorkoutTemplateWorkoutSetModelState
    with _$ExercisesGetWorkoutTemplateWorkoutSetModelState {
  const factory ExercisesGetWorkoutTemplateWorkoutSetModelState.initial({
    GetWorkoutTemplateWorkoutSetModelResponse? getWorkoutTemplateWorkoutSetModelResponse,
    @Default(BooleanStatus.initial) BooleanStatus getWorkoutTemplateWorkoutSetModelStatus,
  }) = _Initial;
}
