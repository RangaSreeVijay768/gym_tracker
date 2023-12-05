import 'package:json_annotation/json_annotation.dart';

part 'sign_in_anonymously_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class SignInAnonymouslyResponse {
  factory SignInAnonymouslyResponse.fromJson(Map<String, dynamic> json) =>
      _$SignInAnonymouslyResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SignInAnonymouslyResponseToJson(this);

  SignInAnonymouslyResponse();
}
