// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_exercises_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllExercisesResponse _$GetAllExercisesResponseFromJson(
        Map<String, dynamic> json) =>
    GetAllExercisesResponse(
      size: json['size'] as int?,
      exercises: (json['exercises'] as List<dynamic>)
          .map((e) => Exercise.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetAllExercisesResponseToJson(
        GetAllExercisesResponse instance) =>
    <String, dynamic>{
      'size': instance.size,
      'exercises': instance.exercises.map((e) => e.toJson()).toList(),
    };
