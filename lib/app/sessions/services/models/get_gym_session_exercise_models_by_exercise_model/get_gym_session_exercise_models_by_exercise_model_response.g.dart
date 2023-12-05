// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_gym_session_exercise_models_by_exercise_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetGymSessionExerciseModelsByExerciseModelResponse
    _$GetGymSessionExerciseModelsByExerciseModelResponseFromJson(
            Map<String, dynamic> json) =>
        GetGymSessionExerciseModelsByExerciseModelResponse(
          gymSessionExercise: (json['gym_session_exercise'] as List<dynamic>?)
              ?.map(
                  (e) => GymSessionExercise.fromJson(e as Map<String, dynamic>))
              .toList(),
          size: json['size'] as int?,
        );

Map<String, dynamic> _$GetGymSessionExerciseModelsByExerciseModelResponseToJson(
        GetGymSessionExerciseModelsByExerciseModelResponse instance) =>
    <String, dynamic>{
      'size': instance.size,
      'gym_session_exercise': instance.gymSessionExercise,
    };
