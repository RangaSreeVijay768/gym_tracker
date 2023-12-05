// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_template_workout_model_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkoutTemplateWorkoutModelSet _$WorkoutTemplateWorkoutModelSetFromJson(
        Map<String, dynamic> json) =>
    WorkoutTemplateWorkoutModelSet(
      workoutTemplateWorkoutModelDocumentReference: _$JsonConverterFromJson<
              String, DocumentReference<WorkoutTemplateWorkoutModel>>(
          json['workout_template_workout_model_document_reference'],
          const WorkoutTemplateModelWorkoutDocumentReferenceConverter()
              .fromJson),
      exerciseModelDocumentReference:
          _$JsonConverterFromJson<String, DocumentReference<ExerciseModel>>(
              json['exercise_model_document_reference'],
              const ExerciseModelDocumentReferenceConverter().fromJson),
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

Map<String, dynamic> _$WorkoutTemplateWorkoutModelSetToJson(
        WorkoutTemplateWorkoutModelSet instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_time':
          const DateTimeToIsoConverter().toJson(instance.createdTime),
      'last_updated_time':
          const DateTimeToIsoConverter().toJson(instance.lastUpdatedTime),
      'workout_template_workout_model_document_reference':
          _$JsonConverterToJson<String,
                  DocumentReference<WorkoutTemplateWorkoutModel>>(
              instance.workoutTemplateWorkoutModelDocumentReference,
              const WorkoutTemplateModelWorkoutDocumentReferenceConverter()
                  .toJson),
      'exercise_model_document_reference':
          _$JsonConverterToJson<String, DocumentReference<ExerciseModel>>(
              instance.exerciseModelDocumentReference,
              const ExerciseModelDocumentReferenceConverter().toJson),
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
