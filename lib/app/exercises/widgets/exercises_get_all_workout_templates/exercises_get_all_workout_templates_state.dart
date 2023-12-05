part of 'exercises_get_all_workout_templates_cubit.dart';

@freezed
class ExercisesGetAllWorkoutTemplatesState
    with _$ExercisesGetAllWorkoutTemplatesState {
  const factory ExercisesGetAllWorkoutTemplatesState.initial({
    GetAllWorkoutTemplatesResponse? getAllWorkoutTemplatesResponse,
    @Default(BooleanStatus.initial) BooleanStatus getAllWorkoutTemplatesStatus,
  }) = _Initial;
}
