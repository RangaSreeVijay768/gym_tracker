// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_workout_templates_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllWorkoutTemplatesResponse _$GetAllWorkoutTemplatesResponseFromJson(
        Map<String, dynamic> json) =>
    GetAllWorkoutTemplatesResponse(
      size: json['size'] as int?,
      workoutTemplates: (json['workout_templates'] as List<dynamic>?)
          ?.map((e) => WorkoutTemplate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetAllWorkoutTemplatesResponseToJson(
        GetAllWorkoutTemplatesResponse instance) =>
    <String, dynamic>{
      'size': instance.size,
      'workout_templates': instance.workoutTemplates,
    };
