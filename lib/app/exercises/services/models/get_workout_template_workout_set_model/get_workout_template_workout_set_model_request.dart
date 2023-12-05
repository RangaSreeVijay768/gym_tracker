import 'package:beebloom_gym_tracker/app/core/models/common/sorted_paginated_request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_workout_template_workout_set_model_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetWorkoutTemplateWorkoutSetModelRequest extends SortedPaginatedRequest{
  String? workoutTemplateId;

  factory GetWorkoutTemplateWorkoutSetModelRequest.fromJson(
      Map<String, dynamic> json) =>
      _$GetWorkoutTemplateWorkoutSetModelRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetWorkoutTemplateWorkoutSetModelRequestToJson(this);

  GetWorkoutTemplateWorkoutSetModelRequest({this.workoutTemplateId});
}
