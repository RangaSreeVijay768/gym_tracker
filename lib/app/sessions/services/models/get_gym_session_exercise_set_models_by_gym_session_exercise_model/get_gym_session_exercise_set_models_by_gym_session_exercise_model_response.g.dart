// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_gym_session_exercise_set_models_by_gym_session_exercise_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetGymSessionExerciseSetModelsByGymSessionExerciseModelResponse
    _$GetGymSessionExerciseSetModelsByGymSessionExerciseModelResponseFromJson(
            Map<String, dynamic> json) =>
        GetGymSessionExerciseSetModelsByGymSessionExerciseModelResponse(
          gymSessionExerciseSet:
              (json['gym_session_exercise_set'] as List<dynamic>?)
                  ?.map((e) =>
                      GymSessionExerciseSet.fromJson(e as Map<String, dynamic>))
                  .toList(),
          size: json['size'] as int?,
        );

Map<String, dynamic>
    _$GetGymSessionExerciseSetModelsByGymSessionExerciseModelResponseToJson(
            GetGymSessionExerciseSetModelsByGymSessionExerciseModelResponse
                instance) =>
        <String, dynamic>{
          'size': instance.size,
          'gym_session_exercise_set': instance.gymSessionExerciseSet,
        };
