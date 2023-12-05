import 'package:beebloom_gym_tracker/app/entities/exercises/exercise.dart';
import 'package:json_annotation/json_annotation.dart';

import '/app/core/models/common/base_entity.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'workout.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Workout extends BaseEntity {
  Exercise? exercise;
  num? volume;
  num? order;
  String? units;

  factory Workout.fromJson(Map<String, dynamic> json) =>
      _$WorkoutFromJson(json);

  Map<String, dynamic> toJson() => _$WorkoutToJson(this);

  Workout(
      {this.exercise,
        this.volume,
        this.order,
        this.units,
        super.id,
        super.createdTime,
        super.lastUpdatedTime});

  Workout copyWith(
      {Exercise? exercise,
      num? volume,
      num? order,
      String? units,
      String? id,
      DateTime? createdTime,
      DateTime? lastUpdatedTime}) {
    return Workout(
      exercise: exercise ?? this.exercise,
      volume: volume ?? this.volume,
      order: order ?? this.order,
      units: units ?? this.units,
      id: id ?? this.id,
      createdTime: createdTime ?? super.createdTime,
      lastUpdatedTime: lastUpdatedTime ?? super.createdTime,
    );
  }


}
