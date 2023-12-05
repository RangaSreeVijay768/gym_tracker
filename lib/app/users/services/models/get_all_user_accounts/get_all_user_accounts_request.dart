import 'package:json_annotation/json_annotation.dart';

part 'get_all_user_accounts_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetAllUserAccountsRequest {

  factory GetAllUserAccountsRequest.fromJson(Map<String, dynamic> json) =>
      _$GetAllUserAccountsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllUserAccountsRequestToJson(this);

  GetAllUserAccountsRequest();
}
