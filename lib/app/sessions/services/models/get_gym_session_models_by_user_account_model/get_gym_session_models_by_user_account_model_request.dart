import 'package:beebloom_gym_tracker/app/core/models/common/sorted_paginated_request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_gym_session_models_by_user_account_model_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetGymSessionModelsByUserAccountModelRequest extends SortedPaginatedRequest{
  String? userAccountId;

  factory GetGymSessionModelsByUserAccountModelRequest.fromJson(
      Map<String, dynamic> json) =>
      _$GetGymSessionModelsByUserAccountModelRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetGymSessionModelsByUserAccountModelRequestToJson(this);

  GetGymSessionModelsByUserAccountModelRequest({this.userAccountId});
}
