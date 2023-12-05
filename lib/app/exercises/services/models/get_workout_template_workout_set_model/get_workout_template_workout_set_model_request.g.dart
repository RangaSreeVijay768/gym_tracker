// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_workout_template_workout_set_model_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetWorkoutTemplateWorkoutSetModelRequest
    _$GetWorkoutTemplateWorkoutSetModelRequestFromJson(
            Map<String, dynamic> json) =>
        GetWorkoutTemplateWorkoutSetModelRequest(
          workoutTemplateId: json['workout_template_id'] as String?,
        )
          ..lastDocumentId = json['last_document_id'] as String?
          ..count = json['count'] as int?
          ..fieldName = json['field_name'] as String?
          ..descending = json['descending'] as bool?;

Map<String, dynamic> _$GetWorkoutTemplateWorkoutSetModelRequestToJson(
        GetWorkoutTemplateWorkoutSetModelRequest instance) =>
    <String, dynamic>{
      'last_document_id': instance.lastDocumentId,
      'count': instance.count,
      'field_name': instance.fieldName,
      'descending': instance.descending,
      'workout_template_id': instance.workoutTemplateId,
    };
