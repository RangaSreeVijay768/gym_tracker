// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_workout_reminders_by_user_account_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetWorkoutRemindersByUserAccountResponse
    _$GetWorkoutRemindersByUserAccountResponseFromJson(
            Map<String, dynamic> json) =>
        GetWorkoutRemindersByUserAccountResponse(
          size: json['size'] as num?,
          workoutReminders: (json['workout_reminders'] as List<dynamic>?)
              ?.map((e) => WorkoutReminder.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$GetWorkoutRemindersByUserAccountResponseToJson(
        GetWorkoutRemindersByUserAccountResponse instance) =>
    <String, dynamic>{
      'size': instance.size,
      'workout_reminders': instance.workoutReminders,
    };
