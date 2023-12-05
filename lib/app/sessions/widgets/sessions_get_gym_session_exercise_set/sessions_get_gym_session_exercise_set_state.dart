part of 'sessions_get_gym_session_exercise_set_cubit.dart';

@freezed
class SessionsGetGymSessionExerciseSetState
    with _$SessionsGetGymSessionExerciseSetState {
  const factory SessionsGetGymSessionExerciseSetState.initial({
    GetGymSessionExerciseSetResponse? getGymSessionExerciseSetResponse,
    @Default(BooleanStatus.initial) BooleanStatus getGymSessionExerciseSetStatus,
  }) = _Initial;
}
