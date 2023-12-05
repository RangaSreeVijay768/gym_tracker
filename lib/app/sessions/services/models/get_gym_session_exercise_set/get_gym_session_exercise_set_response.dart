import 'package:json_annotation/json_annotation.dart';
import '../../../../entities/sessions/gym_session_exercise_set.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'get_gym_session_exercise_set_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetGymSessionExerciseSetResponse {
  GymSessionExerciseSet? gymSessionExerciseSet;

  factory GetGymSessionExerciseSetResponse.fromJson(
      Map<String, dynamic> json) =>
      _$GetGymSessionExerciseSetResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetGymSessionExerciseSetResponseToJson(this);

  GetGymSessionExerciseSetResponse({this.gymSessionExerciseSet});
}
