import 'package:json_annotation/json_annotation.dart';
import '../../../../entities/sessions/gym_session.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'create_gym_session_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CreateGymSessionResponse {
  GymSession? gymSession;

  factory CreateGymSessionResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateGymSessionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CreateGymSessionResponseToJson(this);

  CreateGymSessionResponse({this.gymSession});
}
