// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_workout_template_workout_set_model_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateWorkoutTemplateWorkoutSetModelRequest
    _$CreateWorkoutTemplateWorkoutSetModelRequestFromJson(
            Map<String, dynamic> json) =>
        CreateWorkoutTemplateWorkoutSetModelRequest(
          exerciseId: json['exercise_id'] as String?,
          weight: json['weight'] as num?,
          units: json['units'] as String?,
          startTime: json['start_time'] == null
              ? null
              : DateTime.parse(json['start_time'] as String),
          repCount: json['rep_count'] as num?,
          endTime: json['end_time'] == null
              ? null
              : DateTime.parse(json['end_time'] as String),
          order: json['order'] as num?,
          workoutTemplateWorkoutId:
              json['workout_template_workout_id'] as String?,
        );

Map<String, dynamic> _$CreateWorkoutTemplateWorkoutSetModelRequestToJson(
        CreateWorkoutTemplateWorkoutSetModelRequest instance) =>
    <String, dynamic>{
      'workout_template_workout_id': instance.workoutTemplateWorkoutId,
      'exercise_id': instance.exerciseId,
      'weight': instance.weight,
      'units': instance.units,
      'rep_count': instance.repCount,
      'start_time': instance.startTime?.toIso8601String(),
      'end_time': instance.endTime?.toIso8601String(),
      'order': instance.order,
    };
