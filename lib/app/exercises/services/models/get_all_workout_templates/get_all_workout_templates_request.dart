import 'package:beebloom_gym_tracker/app/core/models/common/sorted_paginated_request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_all_workout_templates_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetAllWorkoutTemplatesRequest extends SortedPaginatedRequest{

  factory GetAllWorkoutTemplatesRequest.fromJson(Map<String, dynamic> json) =>
      _$GetAllWorkoutTemplatesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllWorkoutTemplatesRequestToJson(this);

  GetAllWorkoutTemplatesRequest();
}
