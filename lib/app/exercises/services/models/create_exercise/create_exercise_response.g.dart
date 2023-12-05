// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_exercise_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateExerciseResponse _$CreateExerciseResponseFromJson(
        Map<String, dynamic> json) =>
    CreateExerciseResponse(
      exercise: Exercise.fromJson(json['exercise'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateExerciseResponseToJson(
        CreateExerciseResponse instance) =>
    <String, dynamic>{
      'exercise': instance.exercise,
    };
