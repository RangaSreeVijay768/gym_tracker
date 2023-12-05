part of 'users_create_workout_session_cubit.dart';

@freezed
class UsersCreateWorkoutSessionState with _$UsersCreateWorkoutSessionState {
  const factory UsersCreateWorkoutSessionState.initial({
    DocumentReference<WorkoutSession>? createWorkoutSessionResponse,
    @Default(BooleanStatus.initial) BooleanStatus createWorkoutSessionStatus,
  }) = _Initial;
}


