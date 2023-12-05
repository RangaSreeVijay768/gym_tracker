// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gym_session_exercise_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GymSessionExerciseModel _$GymSessionExerciseModelFromJson(
        Map<String, dynamic> json) =>
    GymSessionExerciseModel(
      startTime: json['start_time'] == null
          ? null
          : DateTime.parse(json['start_time'] as String),
      endTime: json['end_time'] == null
          ? null
          : DateTime.parse(json['end_time'] as String),
      exerciseModelDocumentReference:
          _$JsonConverterFromJson<String, DocumentReference<ExerciseModel>>(
              json['exercise_model_document_reference'],
              const ExerciseModelDocumentReferenceConverter().fromJson),
      gymSessionModelDocumentReference:
          _$JsonConverterFromJson<String, DocumentReference<GymSessionModel>>(
              json['gym_session_model_document_reference'],
              const GymSessionModelDocumentReferenceConverter().fromJson),
      volume: json['volume'] as num?,
      units: json['units'] as String?,
      order: json['order'] as num?,
      id: json['id'] as String?,
      createdTime: _$JsonConverterFromJson<String, DateTime?>(
          json['created_time'], const DateTimeToIsoConverter().fromJson),
      lastUpdatedTime: _$JsonConverterFromJson<String, DateTime?>(
          json['last_updated_time'], const DateTimeToIsoConverter().fromJson),
    );

Map<String, dynamic> _$GymSessionExerciseModelToJson(
        GymSessionExerciseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_time':
          const DateTimeToIsoConverter().toJson(instance.createdTime),
      'last_updated_time':
          const DateTimeToIsoConverter().toJson(instance.lastUpdatedTime),
      'start_time': instance.startTime?.toIso8601String(),
      'end_time': instance.endTime?.toIso8601String(),
      'exercise_model_document_reference':
          _$JsonConverterToJson<String, DocumentReference<ExerciseModel>>(
              instance.exerciseModelDocumentReference,
              const ExerciseModelDocumentReferenceConverter().toJson),
      'gym_session_model_document_reference':
          _$JsonConverterToJson<String, DocumentReference<GymSessionModel>>(
              instance.gymSessionModelDocumentReference,
              const GymSessionModelDocumentReferenceConverter().toJson),
      'volume': instance.volume,
      'units': instance.units,
      'order': instance.order,
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
