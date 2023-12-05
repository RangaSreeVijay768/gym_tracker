part of 'sessions_create_gym_session_exercise_cubit.dart';

@freezed
class SessionsCreateGymSessionExerciseState
    with _$SessionsCreateGymSessionExerciseState {
  const factory SessionsCreateGymSessionExerciseState.initial(
      {CreateGymSessionExerciseResponse? createGymSessionExerciseResponse,
      @Default(BooleanStatus.initial)
      BooleanStatus createGymSessionExerciseStatus,
      DateTime? startTime,
      DateTime? endTime,
      Exercise? exercise,
      GymSession? gymSession}) = _Initial;
}
