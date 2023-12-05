// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_gym_session_exercises_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllGymSessionExercisesRequest _$GetAllGymSessionExercisesRequestFromJson(
        Map<String, dynamic> json) =>
    GetAllGymSessionExercisesRequest()
      ..lastDocumentId = json['last_document_id'] as String?
      ..count = json['count'] as int?
      ..fieldName = json['field_name'] as String?
      ..descending = json['descending'] as bool?;

Map<String, dynamic> _$GetAllGymSessionExercisesRequestToJson(
        GetAllGymSessionExercisesRequest instance) =>
    <String, dynamic>{
      'last_document_id': instance.lastDocumentId,
      'count': instance.count,
      'field_name': instance.fieldName,
      'descending': instance.descending,
    };
