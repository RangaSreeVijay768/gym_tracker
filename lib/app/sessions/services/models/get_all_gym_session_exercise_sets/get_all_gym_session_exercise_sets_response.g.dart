// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_gym_session_exercise_sets_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllGymSessionExerciseSetsResponse
    _$GetAllGymSessionExerciseSetsResponseFromJson(Map<String, dynamic> json) =>
        GetAllGymSessionExerciseSetsResponse(
          gymSessionExerciseSet:
              (json['gym_session_exercise_set'] as List<dynamic>?)
                  ?.map((e) =>
                      GymSessionExerciseSet.fromJson(e as Map<String, dynamic>))
                  .toList(),
          size: json['size'] as int?,
        );

Map<String, dynamic> _$GetAllGymSessionExerciseSetsResponseToJson(
        GetAllGymSessionExerciseSetsResponse instance) =>
    <String, dynamic>{
      'size': instance.size,
      'gym_session_exercise_set': instance.gymSessionExerciseSet,
    };
