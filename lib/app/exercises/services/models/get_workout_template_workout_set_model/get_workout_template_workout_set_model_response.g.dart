// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_workout_template_workout_set_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetWorkoutTemplateWorkoutSetModelResponse
    _$GetWorkoutTemplateWorkoutSetModelResponseFromJson(
            Map<String, dynamic> json) =>
        GetWorkoutTemplateWorkoutSetModelResponse(
          size: json['size'] as int?,
          workoutTemplateWorkoutSet: (json['workout_template_workout_set']
                  as List<dynamic>?)
              ?.map((e) =>
                  WorkoutTemplateWorkoutSet.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$GetWorkoutTemplateWorkoutSetModelResponseToJson(
        GetWorkoutTemplateWorkoutSetModelResponse instance) =>
    <String, dynamic>{
      'workout_template_workout_set': instance.workoutTemplateWorkoutSet,
      'size': instance.size,
    };
