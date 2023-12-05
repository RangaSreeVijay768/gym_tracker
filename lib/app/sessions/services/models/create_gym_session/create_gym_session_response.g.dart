// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_gym_session_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateGymSessionResponse _$CreateGymSessionResponseFromJson(
        Map<String, dynamic> json) =>
    CreateGymSessionResponse(
      gymSession: json['gym_session'] == null
          ? null
          : GymSession.fromJson(json['gym_session'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateGymSessionResponseToJson(
        CreateGymSessionResponse instance) =>
    <String, dynamic>{
      'gym_session': instance.gymSession,
    };
