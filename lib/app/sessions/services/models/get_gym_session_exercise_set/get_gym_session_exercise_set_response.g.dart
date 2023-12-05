// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_gym_session_exercise_set_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetGymSessionExerciseSetResponse _$GetGymSessionExerciseSetResponseFromJson(
        Map<String, dynamic> json) =>
    GetGymSessionExerciseSetResponse(
      gymSessionExerciseSet: json['gym_session_exercise_set'] == null
          ? null
          : GymSessionExerciseSet.fromJson(
              json['gym_session_exercise_set'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetGymSessionExerciseSetResponseToJson(
        GetGymSessionExerciseSetResponse instance) =>
    <String, dynamic>{
      'gym_session_exercise_set': instance.gymSessionExerciseSet,
    };
