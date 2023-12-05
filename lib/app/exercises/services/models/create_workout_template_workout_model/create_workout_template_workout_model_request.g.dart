// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_workout_template_workout_model_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateWorkoutTemplateWorkoutModelRequest
    _$CreateWorkoutTemplateWorkoutModelRequestFromJson(
            Map<String, dynamic> json) =>
        CreateWorkoutTemplateWorkoutModelRequest(
          workoutTemplateId: json['workout_template_id'] as String?,
          exerciseId: json['exercise_id'] as String?,
          order: json['order'] as num?,
          units: json['units'] as String?,
          volume: json['volume'] as num?,
        )
          ..workoutTemplate = json['workout_template'] == null
              ? null
              : WorkoutTemplate.fromJson(
                  json['workout_template'] as Map<String, dynamic>)
          ..exercise = json['exercise'] == null
              ? null
              : Exercise.fromJson(json['exercise'] as Map<String, dynamic>);

Map<String, dynamic> _$CreateWorkoutTemplateWorkoutModelRequestToJson(
        CreateWorkoutTemplateWorkoutModelRequest instance) =>
    <String, dynamic>{
      'workout_template_id': instance.workoutTemplateId,
      'workout_template': instance.workoutTemplate,
      'exercise_id': instance.exerciseId,
      'exercise': instance.exercise,
      'volume': instance.volume,
      'units': instance.units,
      'order': instance.order,
    };
