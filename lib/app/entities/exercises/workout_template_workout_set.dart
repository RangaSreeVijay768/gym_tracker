import 'package:beebloom_gym_tracker/app/entities/exercises/exercise.dart';
import 'package:beebloom_gym_tracker/app/entities/exercises/workout_template_workout.dart';
import 'package:json_annotation/json_annotation.dart';

import '/app/core/models/common/base_entity.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'workout_template_workout_set.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WorkoutTemplateWorkoutSet extends BaseEntity {
  factory WorkoutTemplateWorkoutSet.fromJson(Map<String, dynamic> json) =>
      _$WorkoutTemplateWorkoutSetFromJson(json);

  String? workoutTemplateWorkoutId;
  WorkoutTemplateWorkout? workoutTemplateWorkout;
  String? exerciseId;
  Exercise? exercise;
  num? weight;
  String? units;
  num? repCount;
  DateTime? startTime;
  DateTime? endTime;
  num? order;

  Map<String, dynamic> toJson() => _$WorkoutTemplateWorkoutSetToJson(this);

  WorkoutTemplateWorkoutSet(
      {this.workoutTemplateWorkoutId,
      this.workoutTemplateWorkout,
      this.exerciseId,
      this.exercise,
      this.weight,
      this.units,
      this.repCount,
      this.startTime,
      this.endTime,
      this.order,
      super.id,
      super.createdTime,
      super.lastUpdatedTime});

  WorkoutTemplateWorkoutSet copyWith(
      {String? workoutTemplateWorkoutId,
      WorkoutTemplateWorkout? workoutTemplateWorkout,
      String? exerciseId,
      Exercise? exercise,
      num? weight,
      String? units,
      num? repCount,
      DateTime? startTime,
      DateTime? endTime,
      num? order,
      String? id,
      DateTime? createdTime,
      DateTime? lastUpdatedTime}) {
    return WorkoutTemplateWorkoutSet(
        workoutTemplateWorkoutId:
            workoutTemplateWorkoutId ?? this.workoutTemplateWorkoutId,
        workoutTemplateWorkout:
            workoutTemplateWorkout ?? this.workoutTemplateWorkout,
        exerciseId: exerciseId ?? this.exerciseId,
        exercise: exercise ?? this.exercise,
        weight: weight ?? this.weight,
        units: units ?? this.units,
        repCount: repCount ?? this.repCount,
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
        order: order ?? this.order,
        id: id ?? this.id,
        createdTime: createdTime ?? super.createdTime,
        lastUpdatedTime: lastUpdatedTime ?? super.createdTime);
  }
}
