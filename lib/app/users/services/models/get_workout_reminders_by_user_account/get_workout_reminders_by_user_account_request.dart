import 'package:beebloom_gym_tracker/app/core/models/common/sorted_paginated_request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_workout_reminders_by_user_account_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetWorkoutRemindersByUserAccountRequest extends SortedPaginatedRequest {
  String? userAccountId;

  factory GetWorkoutRemindersByUserAccountRequest.fromJson(
          Map<String, dynamic> json) =>
      _$GetWorkoutRemindersByUserAccountRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetWorkoutRemindersByUserAccountRequestToJson(this);

  GetWorkoutRemindersByUserAccountRequest(
      {this.userAccountId,
      super.fieldName,
      super.descending,
      super.count,
      super.lastDocumentId});
}
