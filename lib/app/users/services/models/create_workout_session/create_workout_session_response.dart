import 'package:json_annotation/json_annotation.dart';

part 'create_workout_session_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CreateWorkoutSessionResponse {

  factory CreateWorkoutSessionResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateWorkoutSessionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CreateWorkoutSessionResponseToJson(this);

  CreateWorkoutSessionResponse();
}
