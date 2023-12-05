import 'package:json_annotation/json_annotation.dart';

part 'get_gym_session_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetGymSessionRequest {
  String? id;

  factory GetGymSessionRequest.fromJson(Map<String, dynamic> json) =>
      _$GetGymSessionRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GetGymSessionRequestToJson(this);

  GetGymSessionRequest({this.id});
}
