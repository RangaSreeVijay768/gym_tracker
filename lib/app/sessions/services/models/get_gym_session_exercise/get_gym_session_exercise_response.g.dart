// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_gym_session_exercise_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetGymSessionExerciseResponse _$GetGymSessionExerciseResponseFromJson(
        Map<String, dynamic> json) =>
    GetGymSessionExerciseResponse(
      gymSessionExercise: json['gym_session_exercise'] == null
          ? null
          : GymSessionExercise.fromJson(
              json['gym_session_exercise'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetGymSessionExerciseResponseToJson(
        GetGymSessionExerciseResponse instance) =>
    <String, dynamic>{
      'gym_session_exercise': instance.gymSessionExercise,
    };
