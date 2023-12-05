import 'package:beebloom_gym_tracker/app/core/models/common/sorted_paginated_request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_gym_session_exercise_set_models_by_gym_session_exercise_model_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetGymSessionExerciseSetModelsByGymSessionExerciseModelRequest extends SortedPaginatedRequest{
  String? gymSessionExerciseId;

  factory GetGymSessionExerciseSetModelsByGymSessionExerciseModelRequest.fromJson(
      Map<String, dynamic> json) =>
      _$GetGymSessionExerciseSetModelsByGymSessionExerciseModelRequestFromJson(
          json);

  Map<String, dynamic> toJson() =>
      _$GetGymSessionExerciseSetModelsByGymSessionExerciseModelRequestToJson(
          this);

  GetGymSessionExerciseSetModelsByGymSessionExerciseModelRequest({this.gymSessionExerciseId});
}
