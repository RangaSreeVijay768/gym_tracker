// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_template_workout_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkoutTemplateWorkoutSet _$WorkoutTemplateWorkoutSetFromJson(
        Map<String, dynamic> json) =>
    WorkoutTemplateWorkoutSet(
      workoutTemplateWorkoutId: json['workout_template_workout_id'] as String?,
      workoutTemplateWorkout: json['workout_template_workout'] == null
          ? null
          : WorkoutTemplateWorkout.fromJson(
              json['workout_template_workout'] as Map<String, dynamic>),
      exerciseId: json['exercise_id'] as String?,
      exercise: json['exercise'] == null
          ? null
          : Exercise.fromJson(json['exercise'] as Map<String, dynamic>),
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

Map<String, dynamic> _$WorkoutTemplateWorkoutSetToJson(
        WorkoutTemplateWorkoutSet instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_time':
          const DateTimeToIsoConverter().toJson(instance.createdTime),
      'last_updated_time':
          const DateTimeToIsoConverter().toJson(instance.lastUpdatedTime),
      'workout_template_workout_id': instance.workoutTemplateWorkoutId,
      'workout_template_workout': instance.workoutTemplateWorkout,
      'exercise_id': instance.exerciseId,
      'exercise': instance.exercise,
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
