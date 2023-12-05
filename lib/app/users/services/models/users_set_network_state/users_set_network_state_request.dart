import 'package:json_annotation/json_annotation.dart';

part 'users_set_network_state_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class UsersSetNetworkStateRequest {
  bool? enabled;

  factory UsersSetNetworkStateRequest.fromJson(Map<String, dynamic> json) =>
      _$UsersSetNetworkStateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UsersSetNetworkStateRequestToJson(this);

  UsersSetNetworkStateRequest({this.enabled});
}
