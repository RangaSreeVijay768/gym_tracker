import 'package:beebloom_gym_tracker/app/entities/users/workout_reminder.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_workout_reminders_by_user_account_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetWorkoutRemindersByUserAccountResponse {
  num? size;
  List<WorkoutReminder>? workoutReminders;

  factory GetWorkoutRemindersByUserAccountResponse.fromJson(
          Map<String, dynamic> json) =>
      _$GetWorkoutRemindersByUserAccountResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetWorkoutRemindersByUserAccountResponseToJson(this);

  GetWorkoutRemindersByUserAccountResponse({
    this.size,
     this.workoutReminders,
  });
}
