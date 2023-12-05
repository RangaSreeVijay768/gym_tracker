import 'package:json_annotation/json_annotation.dart';

part 'get_all_exercises_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetAllExercisesRequest {

  factory GetAllExercisesRequest.fromJson(Map<String, dynamic> json) =>
      _$GetAllExercisesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllExercisesRequestToJson(this);

  GetAllExercisesRequest();
}
