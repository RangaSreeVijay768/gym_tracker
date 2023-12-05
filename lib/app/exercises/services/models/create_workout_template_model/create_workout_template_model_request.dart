import 'package:beebloom_gym_tracker/app/exercises/services/models/create_workout_template_model/create_workout_template_workout_model_item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_workout_template_model_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake,explicitToJson: true)
class CreateWorkoutTemplateModelRequest {
  String? userAccountId;
  List<String>? bodyParts;
  List<String>? types;
  List<CreateWorkoutTemplateWorkoutModelItem>?
      createWorkoutTemplateWorkoutModelItems;

  factory CreateWorkoutTemplateModelRequest.fromJson(
          Map<String, dynamic> json) =>
      _$CreateWorkoutTemplateModelRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CreateWorkoutTemplateModelRequestToJson(this);

  CreateWorkoutTemplateModelRequest({
    this.userAccountId,
    this.bodyParts,
    this.types,
    this.createWorkoutTemplateWorkoutModelItems,
  });
}
