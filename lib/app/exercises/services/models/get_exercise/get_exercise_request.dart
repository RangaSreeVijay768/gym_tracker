import 'package:json_annotation/json_annotation.dart';

part 'get_exercise_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetExerciseRequest {

  String? id;
  factory GetExerciseRequest.fromJson(Map<String, dynamic> json) =>
      _$GetExerciseRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GetExerciseRequestToJson(this);

  GetExerciseRequest({
    this.id,
  });
}
