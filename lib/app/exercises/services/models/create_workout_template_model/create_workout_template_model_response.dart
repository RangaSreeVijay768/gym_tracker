import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/models/workout_template_model.dart';
import 'package:beebloom_gym_tracker/app/entities/exercises/workout_template.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_workout_template_model_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake,explicitToJson: true)
class CreateWorkoutTemplateModelResponse {
  WorkoutTemplate? workoutTemplate;

  factory CreateWorkoutTemplateModelResponse.fromJson(
          Map<String, dynamic> json) =>
      _$CreateWorkoutTemplateModelResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CreateWorkoutTemplateModelResponseToJson(this);

  CreateWorkoutTemplateModelResponse({
    this.workoutTemplate,
  });
}
