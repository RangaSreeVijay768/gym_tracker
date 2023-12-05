// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_accounts_with_reminders_between_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUserAccountsWithRemindersBetweenRequest
    _$GetUserAccountsWithRemindersBetweenRequestFromJson(
            Map<String, dynamic> json) =>
        GetUserAccountsWithRemindersBetweenRequest(
          startTime: json['start_time'] == null
              ? null
              : DateTime.parse(json['start_time'] as String),
          endTime: json['end_time'] == null
              ? null
              : DateTime.parse(json['end_time'] as String),
        );

Map<String, dynamic> _$GetUserAccountsWithRemindersBetweenRequestToJson(
        GetUserAccountsWithRemindersBetweenRequest instance) =>
    <String, dynamic>{
      'start_time': instance.startTime?.toIso8601String(),
      'end_time': instance.endTime?.toIso8601String(),
    };
