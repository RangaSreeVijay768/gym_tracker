import 'package:json_annotation/json_annotation.dart';
import '../../../../entities/sessions/gym_session_exercise.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'get_all_gym_session_exercises_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetAllGymSessionExercisesResponse {
  int? size;
  List<GymSessionExercise>? gymSessionExercises;

  factory GetAllGymSessionExercisesResponse.fromJson(
      Map<String, dynamic> json) =>
      _$GetAllGymSessionExercisesResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetAllGymSessionExercisesResponseToJson(this);

  GetAllGymSessionExercisesResponse({this.size, this.gymSessionExercises});
}
