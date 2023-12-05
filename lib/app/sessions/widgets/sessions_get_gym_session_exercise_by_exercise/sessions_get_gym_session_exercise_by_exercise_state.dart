part of 'sessions_get_gym_session_exercise_by_exercise_cubit.dart';

@freezed
class SessionsGetGymSessionExerciseByExerciseState
    with _$SessionsGetGymSessionExerciseByExerciseState {
  const factory SessionsGetGymSessionExerciseByExerciseState.initial({
    GetGymSessionExerciseModelsByExerciseModelResponse? getGymSessionExerciseModelsByExerciseModelResponse,
    @Default(BooleanStatus.initial) BooleanStatus getGymSessionExerciseModelsByExerciseModelStatus,
  }) = _Initial;
}
