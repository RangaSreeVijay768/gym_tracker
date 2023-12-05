import 'package:beebloom_gym_tracker/app/entities/exercises/exercise.dart';
import 'package:json_annotation/json_annotation.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'get_all_exercises_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake,explicitToJson: true)
class GetAllExercisesResponse  {
  int? size;
  List<Exercise> exercises;
  factory GetAllExercisesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllExercisesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllExercisesResponseToJson(this);

  GetAllExercisesResponse({
    this.size,
    required this.exercises,
  });
}
