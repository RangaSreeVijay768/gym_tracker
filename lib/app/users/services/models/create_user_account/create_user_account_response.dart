import 'package:json_annotation/json_annotation.dart';

part 'create_user_account_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CreateUserAccountResponse {
  String? userAccountId;

  factory CreateUserAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateUserAccountResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CreateUserAccountResponseToJson(this);

  CreateUserAccountResponse(this.userAccountId);
}
