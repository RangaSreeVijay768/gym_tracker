// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gym_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GymSession _$GymSessionFromJson(Map<String, dynamic> json) => GymSession(
      createdTime: _$JsonConverterFromJson<String, DateTime?>(
          json['created_time'], const DateTimeToIsoConverter().fromJson),
      lastUpdatedTime: _$JsonConverterFromJson<String, DateTime?>(
          json['last_updated_time'], const DateTimeToIsoConverter().fromJson),
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
      userAccount: json['user_account'] == null
          ? null
          : UserAccount.fromJson(json['user_account'] as Map<String, dynamic>),
      userAccountId: json['user_account_id'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$GymSessionToJson(GymSession instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_time':
          const DateTimeToIsoConverter().toJson(instance.createdTime),
      'last_updated_time':
          const DateTimeToIsoConverter().toJson(instance.lastUpdatedTime),
      'start_time': instance.startTime?.toIso8601String(),
      'end_time': instance.endTime?.toIso8601String(),
      'body_parts': instance.bodyParts,
      'types': instance.types,
      'user_account': instance.userAccount,
      'user_account_id': instance.userAccountId,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);
