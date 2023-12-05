// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_workout_template_workout_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetWorkoutTemplateWorkoutModelResponse
    _$GetWorkoutTemplateWorkoutModelResponseFromJson(
            Map<String, dynamic> json) =>
        GetWorkoutTemplateWorkoutModelResponse(
          size: json['size'] as int?,
          workoutTemplateWorkout: (json['workout_template_workout']
                  as List<dynamic>?)
              ?.map((e) =>
                  WorkoutTemplateWorkout.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$GetWorkoutTemplateWorkoutModelResponseToJson(
        GetWorkoutTemplateWorkoutModelResponse instance) =>
    <String, dynamic>{
      'size': instance.size,
      'workout_template_workout': instance.workoutTemplateWorkout,
    };
