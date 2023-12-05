import 'package:beebloom_gym_tracker/app/core/models/users/user_account.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_all_user_accounts_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetAllUserAccountsResponse {
  num? size;
  List<UserAccount>? userAccounts;

  factory GetAllUserAccountsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllUserAccountsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllUserAccountsResponseToJson(this);

  GetAllUserAccountsResponse(this.size, this.userAccounts);
}
