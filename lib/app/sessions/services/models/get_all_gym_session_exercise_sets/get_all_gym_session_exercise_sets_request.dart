import 'package:json_annotation/json_annotation.dart';

part 'get_all_gym_session_exercise_sets_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetAllGymSessionExerciseSetsRequest {

  factory GetAllGymSessionExerciseSetsRequest.fromJson(
      Map<String, dynamic> json) =>
      _$GetAllGymSessionExerciseSetsRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetAllGymSessionExerciseSetsRequestToJson(this);

  GetAllGymSessionExerciseSetsRequest();
}
