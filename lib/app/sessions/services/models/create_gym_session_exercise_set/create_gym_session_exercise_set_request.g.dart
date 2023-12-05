// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_gym_session_exercise_set_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateGymSessionExerciseSetRequest _$CreateGymSessionExerciseSetRequestFromJson(
        Map<String, dynamic> json) =>
    CreateGymSessionExerciseSetRequest(
      weight: json['weight'] as num?,
      units: json['units'] as String?,
      repCount: json['rep_count'] as num?,
      startTime: json['start_time'] == null
          ? null
          : DateTime.parse(json['start_time'] as String),
      endTime: json['end_time'] == null
          ? null
          : DateTime.parse(json['end_time'] as String),
      order: json['order'] as num?,
      gymSessionExerciseId: json['gym_session_exercise_id'] as String?,
      exerciseId: json['exercise_id'] as String?,
    )
      ..lastDocumentId = json['last_document_id'] as String?
      ..count = json['count'] as int?
      ..fieldName = json['field_name'] as String?
      ..descending = json['descending'] as bool?;

Map<String, dynamic> _$CreateGymSessionExerciseSetRequestToJson(
        CreateGymSessionExerciseSetRequest instance) =>
    <String, dynamic>{
      'last_document_id': instance.lastDocumentId,
      'count': instance.count,
      'field_name': instance.fieldName,
      'descending': instance.descending,
      'weight': instance.weight,
      'units': instance.units,
      'rep_count': instance.repCount,
      'start_time': instance.startTime?.toIso8601String(),
      'end_time': instance.endTime?.toIso8601String(),
      'order': instance.order,
      'gym_session_exercise_id': instance.gymSessionExerciseId,
      'exercise_id': instance.exerciseId,
    };
