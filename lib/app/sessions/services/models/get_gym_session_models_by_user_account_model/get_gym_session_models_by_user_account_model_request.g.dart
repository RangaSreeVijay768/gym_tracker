// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_gym_session_models_by_user_account_model_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetGymSessionModelsByUserAccountModelRequest
    _$GetGymSessionModelsByUserAccountModelRequestFromJson(
            Map<String, dynamic> json) =>
        GetGymSessionModelsByUserAccountModelRequest(
          userAccountId: json['user_account_id'] as String?,
        )
          ..lastDocumentId = json['last_document_id'] as String?
          ..count = json['count'] as int?
          ..fieldName = json['field_name'] as String?
          ..descending = json['descending'] as bool?;

Map<String, dynamic> _$GetGymSessionModelsByUserAccountModelRequestToJson(
        GetGymSessionModelsByUserAccountModelRequest instance) =>
    <String, dynamic>{
      'last_document_id': instance.lastDocumentId,
      'count': instance.count,
      'field_name': instance.fieldName,
      'descending': instance.descending,
      'user_account_id': instance.userAccountId,
    };
