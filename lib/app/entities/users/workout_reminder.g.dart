// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_reminder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkoutReminder _$WorkoutReminderFromJson(Map<String, dynamic> json) =>
    WorkoutReminder(
      id: json['id'] as String?,
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
      userAccount: json['user_account'] == null
          ? null
          : UserAccount.fromJson(json['user_account'] as Map<String, dynamic>),
      name: json['name'] as String?,
      status: $enumDecodeNullable(_$BooleanStatusEnumMap, json['status']),
      createdTime: _$JsonConverterFromJson<String, DateTime?>(
          json['created_time'], const DateTimeToIsoConverter().fromJson),
      lastUpdatedTime: _$JsonConverterFromJson<String, DateTime?>(
          json['last_updated_time'], const DateTimeToIsoConverter().fromJson),
    );

Map<String, dynamic> _$WorkoutReminderToJson(WorkoutReminder instance) =>
    <String, dynamic>{
      'created_time':
          const DateTimeToIsoConverter().toJson(instance.createdTime),
      'last_updated_time':
          const DateTimeToIsoConverter().toJson(instance.lastUpdatedTime),
      'id': instance.id,
      'name': instance.name,
      'status': _$BooleanStatusEnumMap[instance.status],
      'time': instance.time?.toIso8601String(),
      'user_account': instance.userAccount,
    };

const _$BooleanStatusEnumMap = {
  BooleanStatus.initial: 'initial',
  BooleanStatus.active: 'active',
  BooleanStatus.pending: 'pending',
  BooleanStatus.completed: 'completed',
  BooleanStatus.rejected: 'rejected',
  BooleanStatus.closed: 'closed',
  BooleanStatus.success: 'success',
  BooleanStatus.deleted: 'deleted',
  BooleanStatus.received: 'received',
  BooleanStatus.error: 'error',
  BooleanStatus.start: 'start',
  BooleanStatus.running: 'running',
  BooleanStatus.stop: 'stop',
  BooleanStatus.pick: 'pick',
  BooleanStatus.picked: 'picked',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);
