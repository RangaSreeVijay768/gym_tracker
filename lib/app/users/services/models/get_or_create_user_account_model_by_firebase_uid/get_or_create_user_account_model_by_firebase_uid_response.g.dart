// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_or_create_user_account_model_by_firebase_uid_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetOrCreateUserAccountModelByFirebaseUidResponse
    _$GetOrCreateUserAccountModelByFirebaseUidResponseFromJson(
            Map<String, dynamic> json) =>
        GetOrCreateUserAccountModelByFirebaseUidResponse(
          userAccount: json['user_account'] == null
              ? null
              : UserAccount.fromJson(
                  json['user_account'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$GetOrCreateUserAccountModelByFirebaseUidResponseToJson(
        GetOrCreateUserAccountModelByFirebaseUidResponse instance) =>
    <String, dynamic>{
      'user_account': instance.userAccount?.toJson(),
    };
