// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_gym_session_exercise_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateGymSessionExerciseResponse _$CreateGymSessionExerciseResponseFromJson(
        Map<String, dynamic> json) =>
    CreateGymSessionExerciseResponse(
      gymSessionExercise: json['gym_session_exercise'] == null
          ? null
          : GymSessionExercise.fromJson(
              json['gym_session_exercise'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateGymSessionExerciseResponseToJson(
        CreateGymSessionExerciseResponse instance) =>
    <String, dynamic>{
      'gym_session_exercise': instance.gymSessionExercise,
    };
