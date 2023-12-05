// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_gym_session_models_by_user_account_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetGymSessionModelsByUserAccountModelResponse
    _$GetGymSessionModelsByUserAccountModelResponseFromJson(
            Map<String, dynamic> json) =>
        GetGymSessionModelsByUserAccountModelResponse(
          gymSession: (json['gym_session'] as List<dynamic>?)
              ?.map((e) => GymSession.fromJson(e as Map<String, dynamic>))
              .toList(),
          size: json['size'] as int?,
        );

Map<String, dynamic> _$GetGymSessionModelsByUserAccountModelResponseToJson(
        GetGymSessionModelsByUserAccountModelResponse instance) =>
    <String, dynamic>{
      'size': instance.size,
      'gym_session': instance.gymSession,
    };
