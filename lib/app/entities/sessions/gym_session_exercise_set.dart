import 'package:json_annotation/json_annotation.dart';
import '../exercises/exercise.dart';
import '/app/core/models/common/base_entity.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';
import 'gym_session_exercise.dart';

part 'gym_session_exercise_set.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GymSessionExerciseSet extends BaseEntity {
  num? weight;
  String? units;
  num? repCount;
  DateTime? startTime;
  DateTime? endTime;
  num? order;
  Exercise? exercise;
  String? exerciseId;
  GymSessionExercise? gymSessionExercise;
  String? gymSessionExerciseId;

  factory GymSessionExerciseSet.fromJson(Map<String, dynamic> json) =>
      _$GymSessionExerciseSetFromJson(json);

  Map<String, dynamic> toJson() => _$GymSessionExerciseSetToJson(this);

  GymSessionExerciseSet(
      {super.createdTime,
      super.lastUpdatedTime,
      this.exercise,
      this.exerciseId,
      this.gymSessionExercise,
      this.gymSessionExerciseId,
      this.units,
      this.startTime,
      this.endTime,
      this.order,
      this.repCount,
      this.weight,
      super.id});

  GymSessionExerciseSet copyWith(
      {num? weight,
      String? units,
      num? repCount,
      DateTime? startTime,
      DateTime? endTime,
      num? order,
      Exercise? exercise,
      String? exerciseId,
      GymSessionExercise? gymSessionExercise,
      String? gymSessionExerciseId,
      String? id,
      DateTime? createdTime,
      DateTime? lastUpdatedTime}) {
    return GymSessionExerciseSet(
        weight: weight ?? this.weight,
        units: units ?? this.units,
        repCount: repCount ?? this.repCount,
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
        order: order ?? this.order,
        exercise: exercise ?? this.exercise,
        exerciseId: exerciseId ?? this.exerciseId,
        gymSessionExercise: gymSessionExercise ?? this.gymSessionExercise,
        gymSessionExerciseId: gymSessionExerciseId ?? this.gymSessionExerciseId,
        id: id ?? super.id,
        createdTime: createdTime ?? super.createdTime,
        lastUpdatedTime: lastUpdatedTime ?? super.createdTime);
  }
}
