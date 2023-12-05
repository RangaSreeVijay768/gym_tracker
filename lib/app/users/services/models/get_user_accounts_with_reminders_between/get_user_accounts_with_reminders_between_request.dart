import 'package:json_annotation/json_annotation.dart';

part 'get_user_accounts_with_reminders_between_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetUserAccountsWithRemindersBetweenRequest {
  DateTime? startTime;
  DateTime? endTime;

  factory GetUserAccountsWithRemindersBetweenRequest.fromJson(
          Map<String, dynamic> json) =>
      _$GetUserAccountsWithRemindersBetweenRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetUserAccountsWithRemindersBetweenRequestToJson(this);

  GetUserAccountsWithRemindersBetweenRequest({this.startTime, this.endTime});
}
