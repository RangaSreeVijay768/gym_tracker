// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_gym_session_exercise_set_models_by_gym_session_exercise_model_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetGymSessionExerciseSetModelsByGymSessionExerciseModelRequest
    _$GetGymSessionExerciseSetModelsByGymSessionExerciseModelRequestFromJson(
            Map<String, dynamic> json) =>
        GetGymSessionExerciseSetModelsByGymSessionExerciseModelRequest(
          gymSessionExerciseId: json['gym_session_exercise_id'] as String?,
        )
          ..lastDocumentId = json['last_document_id'] as String?
          ..count = json['count'] as int?
          ..fieldName = json['field_name'] as String?
          ..descending = json['descending'] as bool?;

Map<String, dynamic>
    _$GetGymSessionExerciseSetModelsByGymSessionExerciseModelRequestToJson(
            GetGymSessionExerciseSetModelsByGymSessionExerciseModelRequest
                instance) =>
        <String, dynamic>{
          'last_document_id': instance.lastDocumentId,
          'count': instance.count,
          'field_name': instance.fieldName,
          'descending': instance.descending,
          'gym_session_exercise_id': instance.gymSessionExerciseId,
        };
