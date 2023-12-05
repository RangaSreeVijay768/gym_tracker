// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_workout_template_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetWorkoutTemplateModelResponse _$GetWorkoutTemplateModelResponseFromJson(
        Map<String, dynamic> json) =>
    GetWorkoutTemplateModelResponse(
      workoutTemplate: json['workout_template'] == null
          ? null
          : WorkoutTemplate.fromJson(
              json['workout_template'] as Map<String, dynamic>),
      size: json['size'] as int?,
      workoutTemplates: (json['workout_templates'] as List<dynamic>?)
          ?.map((e) => WorkoutTemplate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetWorkoutTemplateModelResponseToJson(
        GetWorkoutTemplateModelResponse instance) =>
    <String, dynamic>{
      'workout_template': instance.workoutTemplate,
      'size': instance.size,
      'workout_templates': instance.workoutTemplates,
    };
