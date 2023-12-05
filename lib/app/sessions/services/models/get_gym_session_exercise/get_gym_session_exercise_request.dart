import 'package:beebloom_gym_tracker/app/core/models/common/sorted_paginated_request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_gym_session_exercise_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetGymSessionExerciseRequest extends SortedPaginatedRequest{
  String? id;

  factory GetGymSessionExerciseRequest.fromJson(Map<String, dynamic> json) =>
      _$GetGymSessionExerciseRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GetGymSessionExerciseRequestToJson(this);

  GetGymSessionExerciseRequest({this.id});
}
