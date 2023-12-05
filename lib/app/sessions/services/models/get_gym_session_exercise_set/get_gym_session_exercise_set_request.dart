import 'package:beebloom_gym_tracker/app/core/models/common/sorted_paginated_request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_gym_session_exercise_set_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetGymSessionExerciseSetRequest extends SortedPaginatedRequest{
  String? id;

  factory GetGymSessionExerciseSetRequest.fromJson(Map<String, dynamic> json) =>
      _$GetGymSessionExerciseSetRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetGymSessionExerciseSetRequestToJson(this);

  GetGymSessionExerciseSetRequest({this.id});
}
