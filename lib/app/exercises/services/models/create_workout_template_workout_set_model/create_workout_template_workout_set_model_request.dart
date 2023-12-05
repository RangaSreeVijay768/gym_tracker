import 'package:json_annotation/json_annotation.dart';

part 'create_workout_template_workout_set_model_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CreateWorkoutTemplateWorkoutSetModelRequest {
  String? workoutTemplateWorkoutId;
  String? exerciseId;
  num? weight;
  String? units;
  num? repCount;
  DateTime? startTime;
  DateTime? endTime;
  num? order;

  factory CreateWorkoutTemplateWorkoutSetModelRequest.fromJson(
      Map<String, dynamic> json) =>
      _$CreateWorkoutTemplateWorkoutSetModelRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CreateWorkoutTemplateWorkoutSetModelRequestToJson(this);

  CreateWorkoutTemplateWorkoutSetModelRequest({
    this.exerciseId,
    this.weight,
    this.units,
    this.startTime,
    this.repCount,
    this.endTime,
    this.order,
    this.workoutTemplateWorkoutId
});
}
