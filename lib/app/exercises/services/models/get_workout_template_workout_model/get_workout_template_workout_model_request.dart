import 'package:beebloom_gym_tracker/app/core/models/common/paginated_request.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../core/models/common/sorted_paginated_request.dart';

part 'get_workout_template_workout_model_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetWorkoutTemplateWorkoutModelRequest extends SortedPaginatedRequest{
  String? workTemplateId;

  factory GetWorkoutTemplateWorkoutModelRequest.fromJson(
      Map<String, dynamic> json) =>
      _$GetWorkoutTemplateWorkoutModelRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetWorkoutTemplateWorkoutModelRequestToJson(this);

  GetWorkoutTemplateWorkoutModelRequest({this.workTemplateId});
}
