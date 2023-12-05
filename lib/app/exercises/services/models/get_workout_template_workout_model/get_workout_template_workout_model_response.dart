import 'package:json_annotation/json_annotation.dart';
import '../../../../entities/exercises/workout_template_workout.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'get_workout_template_workout_model_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetWorkoutTemplateWorkoutModelResponse {
  int? size;
  List<WorkoutTemplateWorkout>? workoutTemplateWorkout;

  factory GetWorkoutTemplateWorkoutModelResponse.fromJson(
      Map<String, dynamic> json) =>
      _$GetWorkoutTemplateWorkoutModelResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetWorkoutTemplateWorkoutModelResponseToJson(this);

  GetWorkoutTemplateWorkoutModelResponse({this.size, this.workoutTemplateWorkout});
}
