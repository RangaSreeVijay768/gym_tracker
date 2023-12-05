import 'package:json_annotation/json_annotation.dart';

part 'create_user_account_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CreateUserAccountRequest {
  String? accountName;

  factory CreateUserAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateUserAccountRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateUserAccountRequestToJson(this);

  CreateUserAccountRequest({
    this.accountName,
  });
}
