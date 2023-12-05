// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_workout_session_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateWorkoutSessionRequest _$CreateWorkoutSessionRequestFromJson(
        Map<String, dynamic> json) =>
    CreateWorkoutSessionRequest(
      startTime: json['start_time'] == null
          ? null
          : DateTime.parse(json['start_time'] as String),
      endTime: json['end_time'] == null
          ? null
          : DateTime.parse(json['end_time'] as String),
    );

Map<String, dynamic> _$CreateWorkoutSessionRequestToJson(
        CreateWorkoutSessionRequest instance) =>
    <String, dynamic>{
      'start_time': instance.startTime?.toIso8601String(),
      'end_time': instance.endTime?.toIso8601String(),
    };
