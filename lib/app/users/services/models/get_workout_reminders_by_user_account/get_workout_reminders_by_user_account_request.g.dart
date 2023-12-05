// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_workout_reminders_by_user_account_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetWorkoutRemindersByUserAccountRequest
    _$GetWorkoutRemindersByUserAccountRequestFromJson(
            Map<String, dynamic> json) =>
        GetWorkoutRemindersByUserAccountRequest(
          userAccountId: json['user_account_id'] as String?,
          fieldName: json['field_name'] as String?,
          descending: json['descending'] as bool?,
          count: json['count'] as int?,
          lastDocumentId: json['last_document_id'] as String?,
        );

Map<String, dynamic> _$GetWorkoutRemindersByUserAccountRequestToJson(
        GetWorkoutRemindersByUserAccountRequest instance) =>
    <String, dynamic>{
      'last_document_id': instance.lastDocumentId,
      'count': instance.count,
      'field_name': instance.fieldName,
      'descending': instance.descending,
      'user_account_id': instance.userAccountId,
    };
