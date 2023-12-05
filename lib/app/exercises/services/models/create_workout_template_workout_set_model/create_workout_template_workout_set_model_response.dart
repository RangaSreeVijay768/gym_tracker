import 'package:json_annotation/json_annotation.dart';
import '../../../../entities/exercises/workout_template_workout_set.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'create_workout_template_workout_set_model_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CreateWorkoutTemplateWorkoutSetModelResponse {
  WorkoutTemplateWorkoutSet? workoutTemplateWorkoutSet;

  factory CreateWorkoutTemplateWorkoutSetModelResponse.fromJson(
      Map<String, dynamic> json) =>
      _$CreateWorkoutTemplateWorkoutSetModelResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CreateWorkoutTemplateWorkoutSetModelResponseToJson(this);

  CreateWorkoutTemplateWorkoutSetModelResponse();
}
