import 'package:beebloom_gym_tracker/app/core/models/users/user_account.dart';
import 'package:json_annotation/json_annotation.dart';

import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'get_all_user_account_models_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetAllUserAccountModelsResponse extends UserAccount{

  num size;
  List<UserAccount> userAccounts;
  factory GetAllUserAccountModelsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllUserAccountModelsResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetAllUserAccountModelsResponseToJson(this);

  GetAllUserAccountModelsResponse(this.size, this.userAccounts);
}
