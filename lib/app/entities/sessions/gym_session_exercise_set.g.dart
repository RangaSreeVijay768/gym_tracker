// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gym_session_exercise_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GymSessionExerciseSet _$GymSessionExerciseSetFromJson(
        Map<String, dynamic> json) =>
    GymSessionExerciseSet(
      createdTime: _$JsonConverterFromJson<String, DateTime?>(
          json['created_time'], const DateTimeToIsoConverter().fromJson),
      lastUpdatedTime: _$JsonConverterFromJson<String, DateTime?>(
          json['last_updated_time'], const DateTimeToIsoConverter().fromJson),
      exercise: json['exercise'] == null
          ? null
          : Exercise.fromJson(json['exercise'] as Map<String, dynamic>),
      exerciseId: json['exercise_id'] as String?,
      gymSessionExercise: json['gym_session_exercise'] == null
          ? null
          : GymSessionExercise.fromJson(
              json['gym_session_exercise'] as Map<String, dynamic>),
      gymSessionExerciseId: json['gym_session_exercise_id'] as String?,
      units: json['units'] as String?,
      startTime: json['start_time'] == null
          ? null
          : DateTime.parse(json['start_time'] as String),
      endTime: json['end_time'] == null
          ? null
          : DateTime.parse(json['end_time'] as String),
      order: json['order'] as num?,
      repCount: json['rep_count'] as num?,
      weight: json['weight'] as num?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$GymSessionExerciseSetToJson(
        GymSessionExerciseSet instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_time':
          const DateTimeToIsoConverter().toJson(instance.createdTime),
      'last_updated_time':
          const DateTimeToIsoConverter().toJson(instance.lastUpdatedTime),
      'weight': instance.weight,
      'units': instance.units,
      'rep_count': instance.repCount,
      'start_time': instance.startTime?.toIso8601String(),
      'end_time': instance.endTime?.toIso8601String(),
      'order': instance.order,
      'exercise': instance.exercise,
      'exercise_id': instance.exerciseId,
      'gym_session_exercise': instance.gymSessionExercise,
      'gym_session_exercise_id': instance.gymSessionExerciseId,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);
