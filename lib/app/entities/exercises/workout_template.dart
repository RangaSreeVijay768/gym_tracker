import 'package:beebloom_gym_tracker/app/entities/exercises/workout.dart';
import 'package:json_annotation/json_annotation.dart';

import '/app/core/models/common/base_entity.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'workout_template.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class WorkoutTemplate extends BaseEntity {
  List<String>? bodyParts;
  List<String>? types;
  String? createdBy;
  List<Workout>? workouts;
  String? workoutId;

  factory WorkoutTemplate.fromJson(Map<String, dynamic> json) =>
      _$WorkoutTemplateFromJson(json);

  Map<String, dynamic> toJson() => _$WorkoutTemplateToJson(this);

  WorkoutTemplate(
      {this.bodyParts,
      this.types,
      this.createdBy,
      this.workouts,
      this.workoutId,
      super.createdTime,
      super.lastUpdatedTime});

  WorkoutTemplate copyWith(
      {List<String>? bodyParts,
      List<String>? types,
      String? createdBy,
      List<Workout>? workouts,
      String? workoutId,
      String? id,
      DateTime? createdTime,
      DateTime? lastUpdatedTime}) {
    return WorkoutTemplate(
        bodyParts: bodyParts ?? this.bodyParts,
        types: types ?? this.types,
        createdBy: createdBy ?? this.createdBy,
        workouts: workouts ?? this.workouts,
        workoutId: workoutId ?? this.workoutId);
  }
}
