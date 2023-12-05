import 'package:json_annotation/json_annotation.dart';

part 'get_user_accounts_with_reminders_between_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetUserAccountsWithRemindersBetweenResponse {

  factory GetUserAccountsWithRemindersBetweenResponse.fromJson(
      Map<String, dynamic> json) =>
      _$GetUserAccountsWithRemindersBetweenResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetUserAccountsWithRemindersBetweenResponseToJson(this);

  GetUserAccountsWithRemindersBetweenResponse();
}
