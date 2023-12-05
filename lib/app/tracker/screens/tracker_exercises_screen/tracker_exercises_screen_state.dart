part of 'tracker_exercises_screen_cubit.dart';

@freezed
class TrackerExercisesScreenState with _$TrackerExercisesScreenState {
  const factory TrackerExercisesScreenState.initial({
    ExercisesCreateExerciseFormState? exercisesCreateExerciseFormState,
    UserAccount? userAccount
}) = _Initial;
}
