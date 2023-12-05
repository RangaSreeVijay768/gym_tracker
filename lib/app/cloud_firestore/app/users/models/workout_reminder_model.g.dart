// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_reminder_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkoutReminderModel _$WorkoutReminderModelFromJson(
        Map<String, dynamic> json) =>
    WorkoutReminderModel(
      name: json['name'] as String?,
      time: _$JsonConverterFromJson<String, DateTime?>(
          json['time'], const DateTimeToIsoConverter().fromJson),
      userAccountReference:
          _$JsonConverterFromJson<String, DocumentReference<UserAccountModel>>(
              json['user_account_reference'],
              const UserAccountDocumentReferenceConverter().fromJson),
      status: $enumDecodeNullable(_$BooleanStatusModelEnumMap, json['status']),
      createdTime: _$JsonConverterFromJson<String, DateTime?>(
          json['created_time'], const DateTimeToIsoConverter().fromJson),
      lastUpdatedTime: _$JsonConverterFromJson<String, DateTime?>(
          json['last_updated_time'], const DateTimeToIsoConverter().fromJson),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$WorkoutReminderModelToJson(
        WorkoutReminderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_time':
          const DateTimeToIsoConverter().toJson(instance.createdTime),
      'last_updated_time':
          const DateTimeToIsoConverter().toJson(instance.lastUpdatedTime),
      'name': instance.name,
      'time': const DateTimeToIsoConverter().toJson(instance.time),
      'user_account_reference':
          _$JsonConverterToJson<String, DocumentReference<UserAccountModel>>(
              instance.userAccountReference,
              const UserAccountDocumentReferenceConverter().toJson),
      'status': instance.status,
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

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
