part of 'sessions_get_all_gym_session_exercise_sets_cubit.dart';

@freezed
class SessionsGetAllGymSessionExerciseSetsState
    with _$SessionsGetAllGymSessionExerciseSetsState {
  const factory SessionsGetAllGymSessionExerciseSetsState.initial({
    GetAllGymSessionExerciseSetsResponse? getAllGymSessionExerciseSetsResponse,
    @Default(BooleanStatus.initial) BooleanStatus getAllGymSessionExerciseSetsStatus,
  }) = _Initial;
}
