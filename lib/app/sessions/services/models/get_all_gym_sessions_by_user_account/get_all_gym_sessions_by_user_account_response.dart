import 'package:json_annotation/json_annotation.dart';
import '../../../../entities/sessions/gym_session.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'get_all_gym_sessions_by_user_account_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetAllGymSessionsByUserAccountResponse {
  int? size;
  List<GymSession>? gymSessions;

  factory GetAllGymSessionsByUserAccountResponse.fromJson(
      Map<String, dynamic> json) =>
      _$GetAllGymSessionsByUserAccountResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetAllGymSessionsByUserAccountResponseToJson(this);

  GetAllGymSessionsByUserAccountResponse({this.size, this.gymSessions});
}
