// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_template_workout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkoutTemplateWorkout _$WorkoutTemplateWorkoutFromJson(
        Map<String, dynamic> json) =>
    WorkoutTemplateWorkout(
      exerciseId: json['exercise_id'] as String?,
      exercise: json['exercise'] == null
          ? null
          : Exercise.fromJson(json['exercise'] as Map<String, dynamic>),
      workoutTemplateId: json['workout_template_id'] as String?,
      workoutTemplate: WorkoutTemplate.fromJson(
          json['workout_template'] as Map<String, dynamic>),
      volume: json['volume'] as num?,
      units: json['units'] as String?,
      order: json['order'] as num?,
      id: json['id'] as String?,
      createdTime: _$JsonConverterFromJson<String, DateTime?>(
          json['created_time'], const DateTimeToIsoConverter().fromJson),
      lastUpdatedTime: _$JsonConverterFromJson<String, DateTime?>(
          json['last_updated_time'], const DateTimeToIsoConverter().fromJson),
    );

Map<String, dynamic> _$WorkoutTemplateWorkoutToJson(
        WorkoutTemplateWorkout instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_time':
          const DateTimeToIsoConverter().toJson(instance.createdTime),
      'last_updated_time':
          const DateTimeToIsoConverter().toJson(instance.lastUpdatedTime),
      'exercise_id': instance.exerciseId,
      'exercise': instance.exercise,
      'workout_template_id': instance.workoutTemplateId,
      'workout_template': instance.workoutTemplate,
      'volume': instance.volume,
      'units': instance.units,
      'order': instance.order,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);
