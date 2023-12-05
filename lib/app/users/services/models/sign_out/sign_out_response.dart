import 'package:json_annotation/json_annotation.dart';

part 'sign_out_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class SignOutResponse {

  factory SignOutResponse.fromJson(Map<String, dynamic> json) =>
      _$SignOutResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SignOutResponseToJson(this);

  SignOutResponse();
}
