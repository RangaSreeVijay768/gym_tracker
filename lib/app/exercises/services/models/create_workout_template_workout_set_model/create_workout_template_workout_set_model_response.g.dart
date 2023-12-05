// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_workout_template_workout_set_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateWorkoutTemplateWorkoutSetModelResponse
    _$CreateWorkoutTemplateWorkoutSetModelResponseFromJson(
            Map<String, dynamic> json) =>
        CreateWorkoutTemplateWorkoutSetModelResponse()
          ..workoutTemplateWorkoutSet = json['workout_template_workout_set'] ==
                  null
              ? null
              : WorkoutTemplateWorkoutSet.fromJson(
                  json['workout_template_workout_set'] as Map<String, dynamic>);

Map<String, dynamic> _$CreateWorkoutTemplateWorkoutSetModelResponseToJson(
        CreateWorkoutTemplateWorkoutSetModelResponse instance) =>
    <String, dynamic>{
      'workout_template_workout_set': instance.workoutTemplateWorkoutSet,
    };
