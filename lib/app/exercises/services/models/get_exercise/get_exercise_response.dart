import 'package:beebloom_gym_tracker/app/entities/exercises/exercise.dart';
import 'package:json_annotation/json_annotation.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'get_exercise_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetExerciseResponse {

  Exercise exercise;
  factory GetExerciseResponse.fromJson(Map<String, dynamic> json) =>
      _$GetExerciseResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetExerciseResponseToJson(this);

  GetExerciseResponse({
    required this.exercise,
  });
}
