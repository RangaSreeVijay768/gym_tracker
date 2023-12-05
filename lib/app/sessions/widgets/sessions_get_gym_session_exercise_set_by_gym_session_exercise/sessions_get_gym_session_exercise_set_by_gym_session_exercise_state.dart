part of 'sessions_get_gym_session_exercise_set_by_gym_session_exercise_cubit.dart';

@freezed
class SessionsGetGymSessionExerciseSetByGymSessionExerciseState
    with _$SessionsGetGymSessionExerciseSetByGymSessionExerciseState {
  const factory SessionsGetGymSessionExerciseSetByGymSessionExerciseState.initial({
    required GymSessionExercise gymSessionExercise,
    GetGymSessionExerciseSetModelsByGymSessionExerciseModelResponse? getGymSessionExerciseSetModelsByGymSessionExerciseModelResponse,
    @Default(BooleanStatus.initial) BooleanStatus getGymSessionExerciseSetModelsByGymSessionExerciseModelStatus,
  }) = _Initial;
}
