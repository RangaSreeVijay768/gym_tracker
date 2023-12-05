import 'package:json_annotation/json_annotation.dart';
import '../../../../entities/sessions/gym_session_exercise.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'get_gym_session_exercise_models_by_exercise_model_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetGymSessionExerciseModelsByExerciseModelResponse {
  int? size;
  List<GymSessionExercise>? gymSessionExercise;

  factory GetGymSessionExerciseModelsByExerciseModelResponse.fromJson(
      Map<String, dynamic> json) =>
      _$GetGymSessionExerciseModelsByExerciseModelResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetGymSessionExerciseModelsByExerciseModelResponseToJson(this);

  GetGymSessionExerciseModelsByExerciseModelResponse({this.gymSessionExercise, this.size});
}
