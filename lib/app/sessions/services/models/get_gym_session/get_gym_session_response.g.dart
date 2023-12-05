// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_gym_session_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetGymSessionResponse _$GetGymSessionResponseFromJson(
        Map<String, dynamic> json) =>
    GetGymSessionResponse(
      gymSession: json['gym_session'] == null
          ? null
          : GymSession.fromJson(json['gym_session'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetGymSessionResponseToJson(
        GetGymSessionResponse instance) =>
    <String, dynamic>{
      'gym_session': instance.gymSession,
    };
