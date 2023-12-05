// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_workout_template_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateWorkoutTemplateModelResponse _$CreateWorkoutTemplateModelResponseFromJson(
        Map<String, dynamic> json) =>
    CreateWorkoutTemplateModelResponse(
      workoutTemplate: json['workout_template'] == null
          ? null
          : WorkoutTemplate.fromJson(
              json['workout_template'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateWorkoutTemplateModelResponseToJson(
        CreateWorkoutTemplateModelResponse instance) =>
    <String, dynamic>{
      'workout_template': instance.workoutTemplate?.toJson(),
    };
