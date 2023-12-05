import 'package:json_annotation/json_annotation.dart';
import '../../../../entities/sessions/gym_session.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'get_gym_session_models_by_user_account_model_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetGymSessionModelsByUserAccountModelResponse {
  int? size;
  List<GymSession>? gymSession;

  factory GetGymSessionModelsByUserAccountModelResponse.fromJson(
      Map<String, dynamic> json) =>
      _$GetGymSessionModelsByUserAccountModelResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetGymSessionModelsByUserAccountModelResponseToJson(this);

  GetGymSessionModelsByUserAccountModelResponse({this.gymSession, this.size});
}
