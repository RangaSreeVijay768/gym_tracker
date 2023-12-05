// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_exercise_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateExerciseRequest _$CreateExerciseRequestFromJson(
        Map<String, dynamic> json) =>
    CreateExerciseRequest(
      exerciseName: json['exercise_name'] as String?,
      exerciseDescription: json['exercise_description'] as String?,
      bodyParts: (json['body_parts'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      instructions: (json['instructions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      photos:
          (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList(),
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
      videos:
          (json['videos'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$CreateExerciseRequestToJson(
        CreateExerciseRequest instance) =>
    <String, dynamic>{
      'exercise_name': instance.exerciseName,
      'exercise_description': instance.exerciseDescription,
      'body_parts': instance.bodyParts,
      'types': instance.types,
      'photos': instance.photos,
      'instructions': instance.instructions,
      'videos': instance.videos,
    };
