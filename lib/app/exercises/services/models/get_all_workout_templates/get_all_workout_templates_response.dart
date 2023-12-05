import 'package:json_annotation/json_annotation.dart';
import '../../../../entities/exercises/workout_template.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'get_all_workout_templates_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetAllWorkoutTemplatesResponse {
  int? size;
  List<WorkoutTemplate>? workoutTemplates;

  factory GetAllWorkoutTemplatesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllWorkoutTemplatesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllWorkoutTemplatesResponseToJson(this);

  GetAllWorkoutTemplatesResponse({this.size, this.workoutTemplates});
}
