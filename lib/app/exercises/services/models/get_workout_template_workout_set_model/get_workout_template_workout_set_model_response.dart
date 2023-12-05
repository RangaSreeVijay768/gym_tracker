import 'package:json_annotation/json_annotation.dart';
import '../../../../entities/exercises/workout_template_workout_set.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'get_workout_template_workout_set_model_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetWorkoutTemplateWorkoutSetModelResponse {
  List<WorkoutTemplateWorkoutSet>? workoutTemplateWorkoutSet;
  int? size;

  factory GetWorkoutTemplateWorkoutSetModelResponse.fromJson(
      Map<String, dynamic> json) =>
      _$GetWorkoutTemplateWorkoutSetModelResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetWorkoutTemplateWorkoutSetModelResponseToJson(this);

  GetWorkoutTemplateWorkoutSetModelResponse({this.size, this.workoutTemplateWorkoutSet});
}
