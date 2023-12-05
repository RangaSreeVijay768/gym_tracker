part of 'sessions_get_all_gym_session_exercises_cubit.dart';

@freezed
class SessionsGetAllGymSessionExercisesState
    with _$SessionsGetAllGymSessionExercisesState {
  const factory SessionsGetAllGymSessionExercisesState.initial({
    SessionsCreateGymSessionExerciseSetState? sessionsCreateGymSessionExerciseSetState,
    GetAllGymSessionExercisesResponse? getAllGymSessionExercisesResponse,
    @Default(BooleanStatus.initial) BooleanStatus getAllGymSessionExercisesStatus,
  }) = _Initial;
}
