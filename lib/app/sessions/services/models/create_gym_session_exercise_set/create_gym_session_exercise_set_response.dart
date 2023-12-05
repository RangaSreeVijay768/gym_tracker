import 'package:json_annotation/json_annotation.dart';
import '../../../../entities/sessions/gym_session_exercise_set.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'create_gym_session_exercise_set_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CreateGymSessionExerciseSetResponse {
  GymSessionExerciseSet? gymSessionExerciseSet;

  factory CreateGymSessionExerciseSetResponse.fromJson(
      Map<String, dynamic> json) =>
      _$CreateGymSessionExerciseSetResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CreateGymSessionExerciseSetResponseToJson(this);

  CreateGymSessionExerciseSetResponse({this.gymSessionExerciseSet});
}
