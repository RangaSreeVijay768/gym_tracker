import 'package:json_annotation/json_annotation.dart';
import '../../../../entities/sessions/gym_session_exercise_set.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'get_all_gym_session_exercise_sets_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetAllGymSessionExerciseSetsResponse {
  int? size;
  List<GymSessionExerciseSet>? gymSessionExerciseSet;

  factory GetAllGymSessionExerciseSetsResponse.fromJson(
      Map<String, dynamic> json) =>
      _$GetAllGymSessionExerciseSetsResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetAllGymSessionExerciseSetsResponseToJson(this);

  GetAllGymSessionExerciseSetsResponse({this.gymSessionExerciseSet, this.size});
}
