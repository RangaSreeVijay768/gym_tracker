import 'package:beebloom_gym_tracker/app/entities/exercises/exercise.dart';
import 'package:beebloom_gym_tracker/app/entities/exercises/workout_template.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_workout_template_workout_model_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CreateWorkoutTemplateWorkoutModelRequest {
  String? workoutTemplateId;
  WorkoutTemplate? workoutTemplate;
  String? exerciseId;
  Exercise? exercise;
  num? volume;
  String? units;
  num? order;

  factory CreateWorkoutTemplateWorkoutModelRequest.fromJson(
      Map<String, dynamic> json) =>
      _$CreateWorkoutTemplateWorkoutModelRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CreateWorkoutTemplateWorkoutModelRequestToJson(this);

  CreateWorkoutTemplateWorkoutModelRequest({
    this.workoutTemplateId,
    this.exerciseId,
    this.order,
    this.units,
    this.volume
});
}
