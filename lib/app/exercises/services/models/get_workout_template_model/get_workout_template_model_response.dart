import 'package:beebloom_gym_tracker/app/entities/exercises/workout_template.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_workout_template_model_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetWorkoutTemplateModelResponse {
  WorkoutTemplate? workoutTemplate;
  int? size;
  List<WorkoutTemplate>? workoutTemplates;

  factory GetWorkoutTemplateModelResponse.fromJson(Map<String, dynamic> json) =>
      _$GetWorkoutTemplateModelResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetWorkoutTemplateModelResponseToJson(this);

  GetWorkoutTemplateModelResponse({
    this.workoutTemplate,
    this.size,
    this.workoutTemplates
  });
}
