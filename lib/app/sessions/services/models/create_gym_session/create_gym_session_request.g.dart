// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_gym_session_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateGymSessionRequest _$CreateGymSessionRequestFromJson(
        Map<String, dynamic> json) =>
    CreateGymSessionRequest(
      startTime: json['start_time'] == null
          ? null
          : DateTime.parse(json['start_time'] as String),
      endTime: json['end_time'] == null
          ? null
          : DateTime.parse(json['end_time'] as String),
      bodyParts: (json['body_parts'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
      userAccountId: json['user_account_id'] as String?,
    );

Map<String, dynamic> _$CreateGymSessionRequestToJson(
        CreateGymSessionRequest instance) =>
    <String, dynamic>{
      'start_time': instance.startTime?.toIso8601String(),
      'end_time': instance.endTime?.toIso8601String(),
      'body_parts': instance.bodyParts,
      'types': instance.types,
      'user_account_id': instance.userAccountId,
    };
