import 'package:beebloom_gym_tracker/app/core/models/common/sorted_paginated_request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_all_gym_session_exercises_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetAllGymSessionExercisesRequest extends SortedPaginatedRequest{

  factory GetAllGymSessionExercisesRequest.fromJson(
      Map<String, dynamic> json) =>
      _$GetAllGymSessionExercisesRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetAllGymSessionExercisesRequestToJson(this);

  GetAllGymSessionExercisesRequest();
}
