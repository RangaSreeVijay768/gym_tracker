// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_workout_reminder_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateWorkoutReminderRequest _$CreateWorkoutReminderRequestFromJson(
        Map<String, dynamic> json) =>
    CreateWorkoutReminderRequest(
      userAccountId: json['user_account_id'] as String?,
      reminderTime: _$JsonConverterFromJson<String, DateTime?>(
          json['reminder_time'], const DateTimeToIsoConverter().fromJson),
      name: json['name'] as String?,
      time: _$JsonConverterFromJson<String, DateTime?>(
          json['time'], const DateTimeToIsoConverter().fromJson),
      status: $enumDecodeNullable(_$BooleanStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$CreateWorkoutReminderRequestToJson(
        CreateWorkoutReminderRequest instance) =>
    <String, dynamic>{
      'user_account_id': instance.userAccountId,
      'reminder_time':
          const DateTimeToIsoConverter().toJson(instance.reminderTime),
      'name': instance.name,
      'time': const DateTimeToIsoConverter().toJson(instance.time),
      'status': _$BooleanStatusEnumMap[instance.status],
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

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
