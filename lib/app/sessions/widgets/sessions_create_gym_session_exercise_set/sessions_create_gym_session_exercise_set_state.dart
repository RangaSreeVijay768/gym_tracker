part of 'sessions_create_gym_session_exercise_set_cubit.dart';

@freezed
class SessionsCreateGymSessionExerciseSetState
    with _$SessionsCreateGymSessionExerciseSetState {
  const factory SessionsCreateGymSessionExerciseSetState.initial({
    CreateGymSessionExerciseSetResponse? createGymSessionExerciseSetResponse,
    @Default(BooleanStatus.initial) BooleanStatus createGymSessionExerciseSetStatus,
    DateTime? startTime,
    DateTime? endTime,
    Exercise? exercise,
    GymSessionExercise? gymSessionExercise
  }) = _Initial;
}
