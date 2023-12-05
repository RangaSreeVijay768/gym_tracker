// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_gym_session_exercise_models_by_exercise_model_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetGymSessionExerciseModelsByExerciseModelRequest
    _$GetGymSessionExerciseModelsByExerciseModelRequestFromJson(
            Map<String, dynamic> json) =>
        GetGymSessionExerciseModelsByExerciseModelRequest(
          gymSessionId: json['gym_session_id'] as String?,
        )
          ..lastDocumentId = json['last_document_id'] as String?
          ..count = json['count'] as int?
          ..fieldName = json['field_name'] as String?
          ..descending = json['descending'] as bool?;

Map<String, dynamic> _$GetGymSessionExerciseModelsByExerciseModelRequestToJson(
        GetGymSessionExerciseModelsByExerciseModelRequest instance) =>
    <String, dynamic>{
      'last_document_id': instance.lastDocumentId,
      'count': instance.count,
      'field_name': instance.fieldName,
      'descending': instance.descending,
      'gym_session_id': instance.gymSessionId,
    };
