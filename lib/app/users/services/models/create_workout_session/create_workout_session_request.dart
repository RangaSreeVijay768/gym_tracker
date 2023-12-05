import 'package:beebloom_gym_tracker/app/cloud_firestore/app/users/models/user_account_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_workout_session_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CreateWorkoutSessionRequest {
  DateTime? startTime;
  @JsonKey(includeToJson: false, includeFromJson: false)
  DocumentReference<UserAccountModel>? userAccountModel;
  DateTime? endTime;

  factory CreateWorkoutSessionRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateWorkoutSessionRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateWorkoutSessionRequestToJson(this);

  CreateWorkoutSessionRequest(
      {this.startTime, this.userAccountModel, this.endTime});
}
