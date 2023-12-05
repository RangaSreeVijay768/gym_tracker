// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_workout_reminder_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateWorkoutReminderResponse _$CreateWorkoutReminderResponseFromJson(
        Map<String, dynamic> json) =>
    CreateWorkoutReminderResponse(
      workoutReminder: json['workout_reminder'] == null
          ? null
          : WorkoutReminder.fromJson(
              json['workout_reminder'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateWorkoutReminderResponseToJson(
        CreateWorkoutReminderResponse instance) =>
    <String, dynamic>{
      'workout_reminder': instance.workoutReminder,
    };
