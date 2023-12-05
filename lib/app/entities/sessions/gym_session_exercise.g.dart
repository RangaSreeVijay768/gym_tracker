// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gym_session_exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GymSessionExercise _$GymSessionExerciseFromJson(Map<String, dynamic> json) =>
    GymSessionExercise(
      id: json['id'] as String?,
      createdTime: _$JsonConverterFromJson<String, DateTime?>(
          json['created_time'], const DateTimeToIsoConverter().fromJson),
      lastUpdatedTime: _$JsonConverterFromJson<String, DateTime?>(
          json['last_updated_time'], const DateTimeToIsoConverter().fromJson),
      exercise: json['exercise'] == null
          ? null
          : Exercise.fromJson(json['exercise'] as Map<String, dynamic>),
      gymSession: json['gym_session'] == null
          ? null
          : GymSession.fromJson(json['gym_session'] as Map<String, dynamic>),
      gymSessionId: json['gym_session_id'] as String?,
      order: json['order'] as num?,
      endTime: json['end_time'] == null
          ? null
          : DateTime.parse(json['end_time'] as String),
      startTime: json['start_time'] == null
          ? null
          : DateTime.parse(json['start_time'] as String),
      units: json['units'] as String?,
      exerciseId: json['exercise_id'] as String?,
      volume: json['volume'] as num?,
    );

Map<String, dynamic> _$GymSessionExerciseToJson(GymSessionExercise instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_time':
          const DateTimeToIsoConverter().toJson(instance.createdTime),
      'last_updated_time':
          const DateTimeToIsoConverter().toJson(instance.lastUpdatedTime),
      'start_time': instance.startTime?.toIso8601String(),
      'end_time': instance.endTime?.toIso8601String(),
      'exercise': instance.exercise,
      'exercise_id': instance.exerciseId,
      'gym_session': instance.gymSession,
      'gym_session_id': instance.gymSessionId,
      'volume': instance.volume,
      'units': instance.units,
      'order': instance.order,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);
