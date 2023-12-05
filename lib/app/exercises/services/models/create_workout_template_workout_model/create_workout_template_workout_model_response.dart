import 'package:beebloom_gym_tracker/app/entities/exercises/workout_template_workout.dart';
import 'package:json_annotation/json_annotation.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'create_workout_template_workout_model_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CreateWorkoutTemplateWorkoutModelResponse {
  WorkoutTemplateWorkout? workoutTemplateWorkout;

  factory CreateWorkoutTemplateWorkoutModelResponse.fromJson(
      Map<String, dynamic> json) =>
      _$CreateWorkoutTemplateWorkoutModelResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CreateWorkoutTemplateWorkoutModelResponseToJson(this);

  CreateWorkoutTemplateWorkoutModelResponse();
}
