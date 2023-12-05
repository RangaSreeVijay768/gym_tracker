import 'package:json_annotation/json_annotation.dart';

part 'create_exercise_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CreateExerciseRequest {
  String? exerciseName;
  String? exerciseDescription;
  List<String>? bodyParts;
  List<String>? types;
  List<String>? photos;
  List<String>? instructions;
  List<String>? videos;

  factory CreateExerciseRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateExerciseRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateExerciseRequestToJson(this);

  CreateExerciseRequest(
      {this.exerciseName,
      this.exerciseDescription,
      this.bodyParts,
      this.instructions,
      this.photos,
      this.types,
      this.videos});
}
