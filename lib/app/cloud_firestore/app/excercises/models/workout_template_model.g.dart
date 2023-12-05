// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_template_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkoutTemplateModel _$WorkoutTemplateModelFromJson(
        Map<String, dynamic> json) =>
    WorkoutTemplateModel(
      bodyParts: (json['body_parts'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
      createdBy:
          _$JsonConverterFromJson<String, DocumentReference<UserAccountModel>>(
              json['created_by'],
              const UserAccountDocumentReferenceConverter().fromJson),
      id: json['id'] as String?,
      createdTime: _$JsonConverterFromJson<String, DateTime?>(
          json['created_time'], const DateTimeToIsoConverter().fromJson),
      lastUpdatedTime: _$JsonConverterFromJson<String, DateTime?>(
          json['last_updated_time'], const DateTimeToIsoConverter().fromJson),
    );

Map<String, dynamic> _$WorkoutTemplateModelToJson(
        WorkoutTemplateModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_time':
          const DateTimeToIsoConverter().toJson(instance.createdTime),
      'last_updated_time':
          const DateTimeToIsoConverter().toJson(instance.lastUpdatedTime),
      'body_parts': instance.bodyParts,
      'types': instance.types,
      'created_by':
          _$JsonConverterToJson<String, DocumentReference<UserAccountModel>>(
              instance.createdBy,
              const UserAccountDocumentReferenceConverter().toJson),
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
