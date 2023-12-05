import 'package:json_annotation/json_annotation.dart';
import '../../../../entities/sessions/gym_session_exercise_set.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'get_gym_session_exercise_set_models_by_gym_session_exercise_model_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetGymSessionExerciseSetModelsByGymSessionExerciseModelResponse {
  int? size;
  List<GymSessionExerciseSet>? gymSessionExerciseSet;

  factory GetGymSessionExerciseSetModelsByGymSessionExerciseModelResponse.fromJson(
      Map<String, dynamic> json) =>
      _$GetGymSessionExerciseSetModelsByGymSessionExerciseModelResponseFromJson(
          json);

  Map<String, dynamic> toJson() =>
      _$GetGymSessionExerciseSetModelsByGymSessionExerciseModelResponseToJson(
          this);

  GetGymSessionExerciseSetModelsByGymSessionExerciseModelResponse({this.gymSessionExerciseSet, this.size});
}
