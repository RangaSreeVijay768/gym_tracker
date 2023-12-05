part of 'exercises_get_all_exercises_cubit.dart';

@freezed
class ExercisesGetAllExercisesState with _$ExercisesGetAllExercisesState {
  const factory ExercisesGetAllExercisesState.initial(
      {GetAllExercisesResponse? getAllExercisesResponse,
      @Default(BooleanStatus.initial) BooleanStatus getAllExercisesStatus,
        @Default([]) List<dynamic> selectedExercises,
        SessionsCreateGymSessionExerciseState?
          sessionsCreateGymSessionExerciseState}) = _Initial;
}
