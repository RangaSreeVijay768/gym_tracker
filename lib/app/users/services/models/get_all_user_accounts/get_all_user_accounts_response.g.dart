// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_user_accounts_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllUserAccountsResponse _$GetAllUserAccountsResponseFromJson(
        Map<String, dynamic> json) =>
    GetAllUserAccountsResponse(
      json['size'] as num?,
      (json['user_accounts'] as List<dynamic>?)
          ?.map((e) => UserAccount.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetAllUserAccountsResponseToJson(
        GetAllUserAccountsResponse instance) =>
    <String, dynamic>{
      'size': instance.size,
      'user_accounts': instance.userAccounts,
    };
