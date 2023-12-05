import 'package:beebloom_gym_tracker/app/core/models/common/sorted_paginated_request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_all_gym_sessions_by_user_account_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetAllGymSessionsByUserAccountRequest extends SortedPaginatedRequest{
  String? userAccountId;

  factory GetAllGymSessionsByUserAccountRequest.fromJson(
      Map<String, dynamic> json) =>
      _$GetAllGymSessionsByUserAccountRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetAllGymSessionsByUserAccountRequestToJson(this);

  GetAllGymSessionsByUserAccountRequest({this.userAccountId});
}
