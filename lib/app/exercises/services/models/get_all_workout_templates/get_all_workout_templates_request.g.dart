// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_workout_templates_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllWorkoutTemplatesRequest _$GetAllWorkoutTemplatesRequestFromJson(
        Map<String, dynamic> json) =>
    GetAllWorkoutTemplatesRequest()
      ..lastDocumentId = json['last_document_id'] as String?
      ..count = json['count'] as int?
      ..fieldName = json['field_name'] as String?
      ..descending = json['descending'] as bool?;

Map<String, dynamic> _$GetAllWorkoutTemplatesRequestToJson(
        GetAllWorkoutTemplatesRequest instance) =>
    <String, dynamic>{
      'last_document_id': instance.lastDocumentId,
      'count': instance.count,
      'field_name': instance.fieldName,
      'descending': instance.descending,
    };
