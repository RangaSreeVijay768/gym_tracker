import 'package:json_annotation/json_annotation.dart';
import '../../../../entities/sessions/gym_session.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'get_gym_session_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetGymSessionResponse {
  GymSession? gymSession;

  factory GetGymSessionResponse.fromJson(Map<String, dynamic> json) =>
      _$GetGymSessionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetGymSessionResponseToJson(this);

  GetGymSessionResponse({this.gymSession});
}
