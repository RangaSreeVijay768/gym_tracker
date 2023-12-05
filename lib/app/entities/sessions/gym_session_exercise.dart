import 'package:beebloom_gym_tracker/app/entities/exercises/exercise.dart';
import 'package:beebloom_gym_tracker/app/entities/sessions/gym_session.dart';
import 'package:json_annotation/json_annotation.dart';
import '/app/core/models/common/base_entity.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'gym_session_exercise.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GymSessionExercise extends BaseEntity {
  DateTime? startTime;
  DateTime? endTime;
  Exercise? exercise;
  String? exerciseId;
  GymSession? gymSession;
  String? gymSessionId;
  num? volume;
  String? units;
  num? order;

  factory GymSessionExercise.fromJson(Map<String, dynamic> json) =>
      _$GymSessionExerciseFromJson(json);

  Map<String, dynamic> toJson() => _$GymSessionExerciseToJson(this);

  GymSessionExercise({
    super.id,
    super.createdTime,
    super.lastUpdatedTime,
    this.exercise,
    this.gymSession,
    this.gymSessionId,
    this.order,
    this.endTime,
    this.startTime,
    this.units,
    this.exerciseId,
    this.volume,
  });

  GymSessionExercise copyWith(
      {DateTime? startTime,
      DateTime? endTime,
      Exercise? exercise,
      GymSession? gymSession,
      String? exerciseId,
      String? gymSessionId,
      num? volume,
      String? units,
      num? order,
      String? id,
      DateTime? createdTime,
      DateTime? lastUpdatedTime}) {
    return GymSessionExercise(
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
        exercise: exercise ?? this.exercise,
        gymSession: gymSession ?? this.gymSession,
        exerciseId: exerciseId ?? this.exerciseId,
        gymSessionId: gymSessionId ?? this.gymSessionId,
        volume: volume ?? this.volume,
        units: units ?? this.units,
        order: order ?? this.order,
        id: id ?? this.id,
        createdTime: createdTime ?? super.createdTime,
        lastUpdatedTime: lastUpdatedTime ?? super.createdTime);
  }
}
