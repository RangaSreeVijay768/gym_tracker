// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gym_session_exercise_set_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GymSessionExerciseSetModel _$GymSessionExerciseSetModelFromJson(
        Map<String, dynamic> json) =>
    GymSessionExerciseSetModel(
      exerciseModelDocumentReference:
          _$JsonConverterFromJson<String, DocumentReference<ExerciseModel>>(
              json['exercise_model_document_reference'],
              const ExerciseModelDocumentReferenceConverter().fromJson),
      gymSessionExerciseModelDocumentReference: _$JsonConverterFromJson<String,
              DocumentReference<GymSessionExerciseModel>>(
          json['gym_session_exercise_model_document_reference'],
          const GymSessionExerciseModelDocumentReferenceConverter().fromJson),
      weight: json['weight'] as num?,
      units: json['units'] as String?,
      repCount: json['rep_count'] as num?,
      startTime: json['start_time'] == null
          ? null
          : DateTime.parse(json['start_time'] as String),
      endTime: json['end_time'] == null
          ? null
          : DateTime.parse(json['end_time'] as String),
      order: json['order'] as num?,
      id: json['id'] as String?,
      createdTime: _$JsonConverterFromJson<String, DateTime?>(
          json['created_time'], const DateTimeToIsoConverter().fromJson),
      lastUpdatedTime: _$JsonConverterFromJson<String, DateTime?>(
          json['last_updated_time'], const DateTimeToIsoConverter().fromJson),
    );

Map<String, dynamic> _$GymSessionExerciseSetModelToJson(
        GymSessionExerciseSetModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_time':
          const DateTimeToIsoConverter().toJson(instance.createdTime),
      'last_updated_time':
          const DateTimeToIsoConverter().toJson(instance.lastUpdatedTime),
      'exercise_model_document_reference':
          _$JsonConverterToJson<String, DocumentReference<ExerciseModel>>(
              instance.exerciseModelDocumentReference,
              const ExerciseModelDocumentReferenceConverter().toJson),
      'gym_session_exercise_model_document_reference': _$JsonConverterToJson<
              String, DocumentReference<GymSessionExerciseModel>>(
          instance.gymSessionExerciseModelDocumentReference,
          const GymSessionExerciseModelDocumentReferenceConverter().toJson),
      'weight': instance.weight,
      'units': instance.units,
      'rep_count': instance.repCount,
      'start_time': instance.startTime?.toIso8601String(),
      'end_time': instance.endTime?.toIso8601String(),
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
