// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_gym_sessions_by_user_account_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllGymSessionsByUserAccountRequest
    _$GetAllGymSessionsByUserAccountRequestFromJson(
            Map<String, dynamic> json) =>
        GetAllGymSessionsByUserAccountRequest(
          userAccountId: json['user_account_id'] as String?,
        )
          ..lastDocumentId = json['last_document_id'] as String?
          ..count = json['count'] as int?
          ..fieldName = json['field_name'] as String?
          ..descending = json['descending'] as bool?;

Map<String, dynamic> _$GetAllGymSessionsByUserAccountRequestToJson(
        GetAllGymSessionsByUserAccountRequest instance) =>
    <String, dynamic>{
      'last_document_id': instance.lastDocumentId,
      'count': instance.count,
      'field_name': instance.fieldName,
      'descending': instance.descending,
      'user_account_id': instance.userAccountId,
    };
