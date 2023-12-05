import 'package:beebloom_gym_tracker/app/core/models/common/sorted_paginated_request.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../core/models/users/user_account.dart';

part 'create_gym_session_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CreateGymSessionRequest {
  DateTime? startTime;
  DateTime? endTime;
  List<String>? bodyParts;
  List<String>? types;
  String? userAccountId;

  factory CreateGymSessionRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateGymSessionRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateGymSessionRequestToJson(this);

  CreateGymSessionRequest({this.startTime, this.endTime, this.bodyParts,
    this.types,this.userAccountId});

}
