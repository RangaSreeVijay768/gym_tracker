import 'package:beebloom_gym_tracker/app/entities/exercises/exercise.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../../../entities/sessions/gym_session_exercise.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'create_gym_session_exercise_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CreateGymSessionExerciseResponse {
  GymSessionExercise? gymSessionExercise;

  factory CreateGymSessionExerciseResponse.fromJson(
      Map<String, dynamic> json) =>
      _$CreateGymSessionExerciseResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CreateGymSessionExerciseResponseToJson(this);

  CreateGymSessionExerciseResponse({this.gymSessionExercise});
}
