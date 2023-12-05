import 'package:beebloom_gym_tracker/app/core/models/users/user_account.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_or_create_user_account_model_by_firebase_uid_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class GetOrCreateUserAccountModelByFirebaseUidResponse {
  UserAccount? userAccount;

  factory GetOrCreateUserAccountModelByFirebaseUidResponse.fromJson(
          Map<String, dynamic> json) =>
      _$GetOrCreateUserAccountModelByFirebaseUidResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetOrCreateUserAccountModelByFirebaseUidResponseToJson(this);

  GetOrCreateUserAccountModelByFirebaseUidResponse({this.userAccount});
}
