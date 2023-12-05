// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_gym_sessions_by_user_account_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllGymSessionsByUserAccountResponse
    _$GetAllGymSessionsByUserAccountResponseFromJson(
            Map<String, dynamic> json) =>
        GetAllGymSessionsByUserAccountResponse(
          size: json['size'] as int?,
          gymSessions: (json['gym_sessions'] as List<dynamic>?)
              ?.map((e) => GymSession.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$GetAllGymSessionsByUserAccountResponseToJson(
        GetAllGymSessionsByUserAccountResponse instance) =>
    <String, dynamic>{
      'size': instance.size,
      'gym_sessions': instance.gymSessions,
    };
