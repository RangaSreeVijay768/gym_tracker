import 'package:beebloom_gym_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_gym_tracker/app/core/models/users/user_account.dart';
import 'package:json_annotation/json_annotation.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

import '../../core/models/common/converters/date_time_to_iso_converter.dart';
import '/app/core/models/common/base_entity.dart';

part 'workout_reminder.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WorkoutReminder extends BaseEntity {
  String? id;
  String? name;
  BooleanStatus? status;
  DateTime? time;
  UserAccount? userAccount;

  factory WorkoutReminder.fromJson(Map<String, dynamic> json) =>
      _$WorkoutReminderFromJson(json);

  Map<String, dynamic> toJson() => _$WorkoutReminderToJson(this);

  WorkoutReminder(
      {this.id,
      this.time,
      this.userAccount,
      this.name,
      this.status,
      super.createdTime,
      super.lastUpdatedTime});

  @override
  WorkoutReminder copyWith(
      {String? id,
      DateTime? time,
      String? name,
      BooleanStatus? status,
      UserAccount? userAccount,
      DateTime? createdTime,
      DateTime? lastUpdatedTime}) {
    return WorkoutReminder(
      id: id ?? this.id,
      name: name ?? this.name,
      status: status ?? this.status,
      time: time ?? this.time,
      userAccount: userAccount ?? this.userAccount,
    );
  }
}
