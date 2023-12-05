// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_account_models_by_firebase_uid_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUserAccountModelsByFirebaseUidResponse
    _$GetUserAccountModelsByFirebaseUidResponseFromJson(
            Map<String, dynamic> json) =>
        GetUserAccountModelsByFirebaseUidResponse(
          userAccount: json['user_account'] == null
              ? null
              : UserAccount.fromJson(
                  json['user_account'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$GetUserAccountModelsByFirebaseUidResponseToJson(
        GetUserAccountModelsByFirebaseUidResponse instance) =>
    <String, dynamic>{
      'user_account': instance.userAccount?.toJson(),
    };
