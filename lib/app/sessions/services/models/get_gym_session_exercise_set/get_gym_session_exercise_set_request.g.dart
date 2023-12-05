// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_gym_session_exercise_set_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetGymSessionExerciseSetRequest _$GetGymSessionExerciseSetRequestFromJson(
        Map<String, dynamic> json) =>
    GetGymSessionExerciseSetRequest(
      id: json['id'] as String?,
    )
      ..lastDocumentId = json['last_document_id'] as String?
      ..count = json['count'] as int?
      ..fieldName = json['field_name'] as String?
      ..descending = json['descending'] as bool?;

Map<String, dynamic> _$GetGymSessionExerciseSetRequestToJson(
        GetGymSessionExerciseSetRequest instance) =>
    <String, dynamic>{
      'last_document_id': instance.lastDocumentId,
      'count': instance.count,
      'field_name': instance.fieldName,
      'descending': instance.descending,
      'id': instance.id,
    };
