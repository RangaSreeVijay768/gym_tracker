import 'package:json_annotation/json_annotation.dart';

part 'sign_out_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class SignOutRequest {

  factory SignOutRequest.fromJson(Map<String, dynamic> json) =>
      _$SignOutRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SignOutRequestToJson(this);

  SignOutRequest();
}
