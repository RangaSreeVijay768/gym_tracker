// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_user_account_models_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllUserAccountModelsResponse _$GetAllUserAccountModelsResponseFromJson(
        Map<String, dynamic> json) =>
    GetAllUserAccountModelsResponse(
      json['size'] as num,
      (json['user_accounts'] as List<dynamic>)
          .map((e) => UserAccount.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..createdTime = _$JsonConverterFromJson<String, DateTime?>(
          json['created_time'], const DateTimeToIsoConverter().fromJson)
      ..lastUpdatedTime = _$JsonConverterFromJson<String, DateTime?>(
          json['last_updated_time'], const DateTimeToIsoConverter().fromJson)
      ..id = json['id'] as String?
      ..accountId = json['account_id'] as String?
      ..accountStatus = json['account_status'] as String?
      ..accountType = json['account_type'] as String?
      ..accountName = json['account_name'] as String?
      ..emailId = json['email_id'] as String?
      ..phoneNumber = json['phone_number'] as String?
      ..firebaseUid = json['firebase_uid'] as String?;

Map<String, dynamic> _$GetAllUserAccountModelsResponseToJson(
        GetAllUserAccountModelsResponse instance) =>
    <String, dynamic>{
      'created_time':
          const DateTimeToIsoConverter().toJson(instance.createdTime),
      'last_updated_time':
          const DateTimeToIsoConverter().toJson(instance.lastUpdatedTime),
      'id': instance.id,
      'account_id': instance.accountId,
      'account_status': instance.accountStatus,
      'account_type': instance.accountType,
      'account_name': instance.accountName,
      'email_id': instance.emailId,
      'phone_number': instance.phoneNumber,
      'firebase_uid': instance.firebaseUid,
      'size': instance.size,
      'user_accounts': instance.userAccounts,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);
