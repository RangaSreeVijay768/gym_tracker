import 'package:beebloom_gym_tracker/app/core/models/common/sorted_paginated_request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_gym_session_exercise_models_by_exercise_model_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetGymSessionExerciseModelsByExerciseModelRequest extends SortedPaginatedRequest{
  String? gymSessionId;

  factory GetGymSessionExerciseModelsByExerciseModelRequest.fromJson(
      Map<String, dynamic> json) =>
      _$GetGymSessionExerciseModelsByExerciseModelRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetGymSessionExerciseModelsByExerciseModelRequestToJson(this);

  GetGymSessionExerciseModelsByExerciseModelRequest({this.gymSessionId});
}
