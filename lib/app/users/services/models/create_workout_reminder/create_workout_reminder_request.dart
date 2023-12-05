import 'package:beebloom_gym_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_gym_tracker/app/core/models/common/converters/date_time_to_iso_converter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_workout_reminder_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CreateWorkoutReminderRequest {
  String? userAccountId;
  @DateTimeToIsoConverter()
  DateTime? reminderTime;
  String? name;
  @DateTimeToIsoConverter()
  DateTime? time;
  BooleanStatus? status;

  factory CreateWorkoutReminderRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateWorkoutReminderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateWorkoutReminderRequestToJson(this);

  CreateWorkoutReminderRequest({
    this.userAccountId,
    this.reminderTime,
    this.name,
    this.time,
    this.status,
  });
}
