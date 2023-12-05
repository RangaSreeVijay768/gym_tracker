// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_template_workout_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkoutTemplateWorkoutModel _$WorkoutTemplateWorkoutModelFromJson(
        Map<String, dynamic> json) =>
    WorkoutTemplateWorkoutModel(
      exerciseModelDocumentReference:
          _$JsonConverterFromJson<String, DocumentReference<ExerciseModel>>(
              json['exercise_model_document_reference'],
              const ExerciseModelDocumentReferenceConverter().fromJson),
      workoutTemplateModelDocumentReference: _$JsonConverterFromJson<String,
              DocumentReference<WorkoutTemplateModel>>(
          json['workout_template_model_document_reference'],
          const WorkoutTemplateModelDocumentReferenceConverter().fromJson),
      volume: json['volume'] as num?,
      units: json['units'] as String?,
      order: json['order'] as num?,
      id: json['id'] as String?,
      createdTime: _$JsonConverterFromJson<String, DateTime?>(
          json['created_time'], const DateTimeToIsoConverter().fromJson),
      lastUpdatedTime: _$JsonConverterFromJson<String, DateTime?>(
          json['last_updated_time'], const DateTimeToIsoConverter().fromJson),
    );

Map<String, dynamic> _$WorkoutTemplateWorkoutModelToJson(
        WorkoutTemplateWorkoutModel instance) =>
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
      'workout_template_model_document_reference': _$JsonConverterToJson<String,
              DocumentReference<WorkoutTemplateModel>>(
          instance.workoutTemplateModelDocumentReference,
          const WorkoutTemplateModelDocumentReferenceConverter().toJson),
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
