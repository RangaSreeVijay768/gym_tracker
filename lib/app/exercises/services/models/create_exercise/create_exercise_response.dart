import '/app/core/models/common/converters/date_time_to_iso_converter.dart';
import 'package:beebloom_gym_tracker/app/entities/exercises/exercise.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_exercise_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CreateExerciseResponse {
  Exercise exercise;

  factory CreateExerciseResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateExerciseResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CreateExerciseResponseToJson(this);

  CreateExerciseResponse({
    required this.exercise,
  });
}
