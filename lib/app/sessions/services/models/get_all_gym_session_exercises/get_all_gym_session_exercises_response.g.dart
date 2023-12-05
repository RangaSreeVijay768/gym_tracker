// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_gym_session_exercises_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllGymSessionExercisesResponse _$GetAllGymSessionExercisesResponseFromJson(
        Map<String, dynamic> json) =>
    GetAllGymSessionExercisesResponse(
      size: json['size'] as int?,
      gymSessionExercises: (json['gym_session_exercises'] as List<dynamic>?)
          ?.map((e) => GymSessionExercise.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetAllGymSessionExercisesResponseToJson(
        GetAllGymSessionExercisesResponse instance) =>
    <String, dynamic>{
      'size': instance.size,
      'gym_session_exercises': instance.gymSessionExercises,
    };
