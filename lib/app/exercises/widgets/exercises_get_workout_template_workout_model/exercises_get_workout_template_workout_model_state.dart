part of 'exercises_get_workout_template_workout_model_cubit.dart';

@freezed
class ExercisesGetWorkoutTemplateWorkoutModelState
    with _$ExercisesGetWorkoutTemplateWorkoutModelState {
  const factory ExercisesGetWorkoutTemplateWorkoutModelState.initial({
    GetWorkoutTemplateWorkoutModelResponse? getWorkoutTemplateWorkoutModelResponse,
    @Default(BooleanStatus.initial) BooleanStatus getWorkoutTemplateWorkoutModelStatus,
  }) = _Initial;
}
