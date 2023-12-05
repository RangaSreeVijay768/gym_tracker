// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAccountModel _$UserAccountModelFromJson(Map<String, dynamic> json) =>
    UserAccountModel(
      id: json['id'] as String?,
      displayName: json['display_name'] as String?,
      emailId: json['email_id'] as String?,
      firebaseUid: json['firebase_uid'] as String?,
      createdTime: _$JsonConverterFromJson<String, DateTime?>(
          json['created_time'], const DateTimeToIsoConverter().fromJson),
      lastUpdatedTime: _$JsonConverterFromJson<String, DateTime?>(
          json['last_updated_time'], const DateTimeToIsoConverter().fromJson),
    )..status =
        $enumDecodeNullable(_$BooleanStatusModelEnumMap, json['status']);

Map<String, dynamic> _$UserAccountModelToJson(UserAccountModel instance) =>
    <String, dynamic>{
      'created_time':
          const DateTimeToIsoConverter().toJson(instance.createdTime),
      'last_updated_time':
          const DateTimeToIsoConverter().toJson(instance.lastUpdatedTime),
      'id': instance.id,
      'display_name': instance.displayName,
      'email_id': instance.emailId,
      'status': instance.status?.toJson(),
      'firebase_uid': instance.firebaseUid,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$BooleanStatusModelEnumMap = {
  BooleanStatusModel.active: 'active',
  BooleanStatusModel.pending: 'pending',
  BooleanStatusModel.completed: 'completed',
  BooleanStatusModel.rejected: 'rejected',
  BooleanStatusModel.closed: 'closed',
  BooleanStatusModel.success: 'success',
  BooleanStatusModel.deleted: 'deleted',
  BooleanStatusModel.received: 'received',
  BooleanStatusModel.error: 'error',
  BooleanStatusModel.start: 'start',
  BooleanStatusModel.running: 'running',
};
