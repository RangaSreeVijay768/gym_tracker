import 'package:json_annotation/json_annotation.dart';
import '../../../../entities/sessions/gym_session_exercise.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'get_gym_session_exercise_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetGymSessionExerciseResponse {
  GymSessionExercise? gymSessionExercise;

  factory GetGymSessionExerciseResponse.fromJson(Map<String, dynamic> json) =>
      _$GetGymSessionExerciseResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetGymSessionExerciseResponseToJson(this);

  GetGymSessionExerciseResponse({this.gymSessionExercise});
}
