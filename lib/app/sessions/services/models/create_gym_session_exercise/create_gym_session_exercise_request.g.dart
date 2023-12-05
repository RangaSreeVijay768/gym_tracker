// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_gym_session_exercise_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateGymSessionExerciseRequest _$CreateGymSessionExerciseRequestFromJson(
        Map<String, dynamic> json) =>
    CreateGymSessionExerciseRequest(
      startTime: json['start_time'] == null
          ? null
          : DateTime.parse(json['start_time'] as String),
      endTime: json['end_time'] == null
          ? null
          : DateTime.parse(json['end_time'] as String),
      exerciseId: json['exercise_id'] as String?,
      volume: json['volume'] as num?,
      units: json['units'] as String?,
      order: json['order'] as num?,
      gymSessionId: json['gym_session_id'] as String?,
    );

Map<String, dynamic> _$CreateGymSessionExerciseRequestToJson(
        CreateGymSessionExerciseRequest instance) =>
    <String, dynamic>{
      'start_time': instance.startTime?.toIso8601String(),
      'end_time': instance.endTime?.toIso8601String(),
      'exercise_id': instance.exerciseId,
      'volume': instance.volume,
      'units': instance.units,
      'order': instance.order,
      'gym_session_id': instance.gymSessionId,
    };
