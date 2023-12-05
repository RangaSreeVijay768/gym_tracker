import 'package:beebloom_gym_tracker/app/entities/exercises/exercise.dart';
import 'package:beebloom_gym_tracker/app/entities/exercises/workout_template.dart';
import 'package:json_annotation/json_annotation.dart';

import '/app/core/models/common/base_entity.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'workout_template_workout.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WorkoutTemplateWorkout extends BaseEntity {
  factory WorkoutTemplateWorkout.fromJson(Map<String, dynamic> json) =>
      _$WorkoutTemplateWorkoutFromJson(json);

  String? exerciseId;
  Exercise? exercise;
  String? workoutTemplateId;
  WorkoutTemplate workoutTemplate;
  num? volume;
  String? units;
  num? order;

  Map<String, dynamic> toJson() => _$WorkoutTemplateWorkoutToJson(this);

  WorkoutTemplateWorkout(
      {this.exerciseId,
      this.exercise,
      this.workoutTemplateId,
      required this.workoutTemplate,
      this.volume,
      this.units,
      this.order,
      super.id,
      super.createdTime,
      super.lastUpdatedTime});

  WorkoutTemplateWorkout copyWith(
      {String? exerciseId,
      Exercise? exercise,
      String? workoutTemplateId,
      WorkoutTemplate? workoutTemplate,
      num? volume,
      String? units,
      num? order,
      String? id,
      DateTime? createdTime,
      DateTime? lastUpdatedTime}) {
    return WorkoutTemplateWorkout(
        exerciseId: exerciseId ?? this.exerciseId,
        exercise: exercise ?? this.exercise,
        workoutTemplateId: workoutTemplateId ?? this.workoutTemplateId,
        workoutTemplate: workoutTemplate ?? this.workoutTemplate,
        volume: volume ?? this.volume,
        units: units ?? this.units,
        order: order ?? this.order,
        id: id ?? this.id,
        createdTime: createdTime ?? super.createdTime,
        lastUpdatedTime: lastUpdatedTime ?? super.createdTime);
  }
}
