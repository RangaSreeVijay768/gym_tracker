import 'package:beebloom_gym_tracker/app/entities/users/workout_reminder.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_workout_reminder_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CreateWorkoutReminderResponse {
  WorkoutReminder? workoutReminder;

  factory CreateWorkoutReminderResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateWorkoutReminderResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CreateWorkoutReminderResponseToJson(this);

  CreateWorkoutReminderResponse({this.workoutReminder});
}
