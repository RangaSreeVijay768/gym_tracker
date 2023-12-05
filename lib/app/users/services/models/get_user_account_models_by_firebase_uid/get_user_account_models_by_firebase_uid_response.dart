import 'package:beebloom_gym_tracker/app/core/models/users/user_account.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_user_account_models_by_firebase_uid_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class GetUserAccountModelsByFirebaseUidResponse {
  UserAccount? userAccount;

  factory GetUserAccountModelsByFirebaseUidResponse.fromJson(
          Map<String, dynamic> json) =>
      _$GetUserAccountModelsByFirebaseUidResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetUserAccountModelsByFirebaseUidResponseToJson(this);

  GetUserAccountModelsByFirebaseUidResponse({this.userAccount});


}
