part of 'users_create_workout_reminder_cubit.dart';

@freezed
class UsersCreateWorkoutReminderState with _$UsersCreateWorkoutReminderState {
  const factory UsersCreateWorkoutReminderState.initial({
    String? userAccountId,
    num? randomNumber,
    DateTime? reminderTime,
    CreateWorkoutReminderResponse? createWorkoutReminderResponse,
    @Default(BooleanStatus.initial) BooleanStatus createWorkoutReminderStatus,
  }) = _Initial;
}
