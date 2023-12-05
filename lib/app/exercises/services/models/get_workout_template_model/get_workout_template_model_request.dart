import 'package:beebloom_gym_tracker/app/core/models/common/sorted_paginated_request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_workout_template_model_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetWorkoutTemplateModelRequest extends SortedPaginatedRequest{
  String? workTemplateId;

  factory GetWorkoutTemplateModelRequest.fromJson(Map<String, dynamic> json) =>
      _$GetWorkoutTemplateModelRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GetWorkoutTemplateModelRequestToJson(this);

  GetWorkoutTemplateModelRequest({this.workTemplateId});
}
