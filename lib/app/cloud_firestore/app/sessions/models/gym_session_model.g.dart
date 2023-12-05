// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gym_session_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GymSessionModel _$GymSessionModelFromJson(Map<String, dynamic> json) =>
    GymSessionModel(
      userAccountModelDocumentReference:
          _$JsonConverterFromJson<String, DocumentReference<UserAccountModel>>(
              json['user_account_model_document_reference'],
              const UserAccountDocumentReferenceConverter().fromJson),
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
      id: json['id'] as String?,
      createdTime: _$JsonConverterFromJson<String, DateTime?>(
          json['created_time'], const DateTimeToIsoConverter().fromJson),
      lastUpdatedTime: _$JsonConverterFromJson<String, DateTime?>(
          json['last_updated_time'], const DateTimeToIsoConverter().fromJson),
    );

Map<String, dynamic> _$GymSessionModelToJson(GymSessionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_time':
          const DateTimeToIsoConverter().toJson(instance.createdTime),
      'last_updated_time':
          const DateTimeToIsoConverter().toJson(instance.lastUpdatedTime),
      'user_account_model_document_reference':
          _$JsonConverterToJson<String, DocumentReference<UserAccountModel>>(
              instance.userAccountModelDocumentReference,
              const UserAccountDocumentReferenceConverter().toJson),
      'start_time': instance.startTime?.toIso8601String(),
      'end_time': instance.endTime?.toIso8601String(),
      'body_parts': instance.bodyParts,
      'types': instance.types,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
