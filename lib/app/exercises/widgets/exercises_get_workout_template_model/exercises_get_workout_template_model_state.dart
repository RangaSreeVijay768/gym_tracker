part of 'exercises_get_workout_template_model_cubit.dart';

@freezed
class ExercisesGetWorkoutTemplateModelState
    with _$ExercisesGetWorkoutTemplateModelState {
  const factory ExercisesGetWorkoutTemplateModelState.initial({
    GetWorkoutTemplateModelResponse? getWorkoutTemplateModelResponse,
    @Default(BooleanStatus.initial) BooleanStatus getWorkoutTemplateModelStatus,
  }) = _Initial;
}
