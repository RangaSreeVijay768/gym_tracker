// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_exercise_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetExerciseResponse _$GetExerciseResponseFromJson(Map<String, dynamic> json) =>
    GetExerciseResponse(
      exercise: Exercise.fromJson(json['exercise'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetExerciseResponseToJson(
        GetExerciseResponse instance) =>
    <String, dynamic>{
      'exercise': instance.exercise,
    };
