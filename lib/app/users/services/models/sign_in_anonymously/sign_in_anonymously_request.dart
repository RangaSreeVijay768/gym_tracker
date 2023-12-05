import 'package:json_annotation/json_annotation.dart';

part 'sign_in_anonymously_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class SignInAnonymouslyRequest {

  factory SignInAnonymouslyRequest.fromJson(Map<String, dynamic> json) =>
      _$SignInAnonymouslyRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SignInAnonymouslyRequestToJson(this);

  SignInAnonymouslyRequest();
}
