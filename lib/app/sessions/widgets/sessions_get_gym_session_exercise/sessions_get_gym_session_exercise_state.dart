part of 'sessions_get_gym_session_exercise_cubit.dart';

@freezed
class SessionsGetGymSessionExerciseState
    with _$SessionsGetGymSessionExerciseState {
  const factory SessionsGetGymSessionExerciseState.initial({
    GetGymSessionExerciseResponse? getGymSessionExerciseResponse,
    @Default(BooleanStatus.initial) BooleanStatus getGymSessionExerciseStatus,
    required Exercise exercise
  }) = _Initial;
}
