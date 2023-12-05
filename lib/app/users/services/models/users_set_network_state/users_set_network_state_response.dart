import 'package:json_annotation/json_annotation.dart';

part 'users_set_network_state_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class UsersSetNetworkStateResponse {

  factory UsersSetNetworkStateResponse.fromJson(Map<String, dynamic> json) =>
      _$UsersSetNetworkStateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UsersSetNetworkStateResponseToJson(this);

  UsersSetNetworkStateResponse();
}
