import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_workout_template_workout_model_item.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CreateWorkoutTemplateWorkoutModelItem {
  factory CreateWorkoutTemplateWorkoutModelItem.fromJson(
          Map<String, dynamic> json) =>
      _$CreateWorkoutTemplateWorkoutModelItemFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CreateWorkoutTemplateWorkoutModelItemToJson(this);

  String? exerciseModelId;
  num? volume;
  String? units;
  num? order;

  CreateWorkoutTemplateWorkoutModelItem({
    this.exerciseModelId,
    this.volume,
    this.units,
    this.order,
  });
}
