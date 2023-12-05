import 'package:beebloom_gym_tracker/app/core/models/common/sorted_paginated_request.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../entities/exercises/exercise.dart';

part 'create_gym_session_exercise_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CreateGymSessionExerciseRequest{
  DateTime? startTime;
  DateTime? endTime;
  String? exerciseId;
  num? volume;
  String? units;
  num? order;
  String? gymSessionId;

  factory CreateGymSessionExerciseRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateGymSessionExerciseRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CreateGymSessionExerciseRequestToJson(this);

  CreateGymSessionExerciseRequest({this.startTime, this.endTime,
    this.exerciseId, this.volume, this.units, this.order,this.gymSessionId});
}
