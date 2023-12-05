import 'package:json_annotation/json_annotation.dart';

part 'get_user_account_models_by_firebase_uid_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class GetUserAccountModelsByFirebaseUidRequest {

  String? firebaseUid;

  factory GetUserAccountModelsByFirebaseUidRequest.fromJson(
      Map<String, dynamic> json) =>
      _$GetUserAccountModelsByFirebaseUidRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetUserAccountModelsByFirebaseUidRequestToJson(this);

  GetUserAccountModelsByFirebaseUidRequest();
}
