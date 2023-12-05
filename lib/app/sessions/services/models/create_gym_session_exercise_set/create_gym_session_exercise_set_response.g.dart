// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_gym_session_exercise_set_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateGymSessionExerciseSetResponse
    _$CreateGymSessionExerciseSetResponseFromJson(Map<String, dynamic> json) =>
        CreateGymSessionExerciseSetResponse(
          gymSessionExerciseSet: json['gym_session_exercise_set'] == null
              ? null
              : GymSessionExerciseSet.fromJson(
                  json['gym_session_exercise_set'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CreateGymSessionExerciseSetResponseToJson(
        CreateGymSessionExerciseSetResponse instance) =>
    <String, dynamic>{
      'gym_session_exercise_set': instance.gymSessionExerciseSet,
    };
