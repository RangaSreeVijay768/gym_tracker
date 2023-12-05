import 'package:beebloom_gym_tracker/app/core/models/common/sorted_paginated_request.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../entities/exercises/exercise.dart';

part 'create_gym_session_exercise_set_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CreateGymSessionExerciseSetRequest extends SortedPaginatedRequest{
  num? weight;
  String? units;
  num? repCount;
  DateTime? startTime;
  DateTime? endTime;
  num? order;
  String? gymSessionExerciseId;
  String? exerciseId;

  factory CreateGymSessionExerciseSetRequest.fromJson(
          Map<String, dynamic> json) =>
      _$CreateGymSessionExerciseSetRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CreateGymSessionExerciseSetRequestToJson(this);

  CreateGymSessionExerciseSetRequest(
      {this.weight,
      this.units,
      this.repCount,
      this.startTime,
      this.endTime,
      this.order,
        this.gymSessionExerciseId,
      this.exerciseId});
}
