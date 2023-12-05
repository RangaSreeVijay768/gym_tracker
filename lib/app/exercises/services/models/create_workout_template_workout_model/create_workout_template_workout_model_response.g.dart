// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_workout_template_workout_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateWorkoutTemplateWorkoutModelResponse
    _$CreateWorkoutTemplateWorkoutModelResponseFromJson(
            Map<String, dynamic> json) =>
        CreateWorkoutTemplateWorkoutModelResponse()
          ..workoutTemplateWorkout = json['workout_template_workout'] == null
              ? null
              : WorkoutTemplateWorkout.fromJson(
                  json['workout_template_workout'] as Map<String, dynamic>);

Map<String, dynamic> _$CreateWorkoutTemplateWorkoutModelResponseToJson(
        CreateWorkoutTemplateWorkoutModelResponse instance) =>
    <String, dynamic>{
      'workout_template_workout': instance.workoutTemplateWorkout,
    };
