import 'package:json_annotation/json_annotation.dart';

part 'get_or_create_user_account_model_by_firebase_uid_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class GetOrCreateUserAccountModelByFirebaseUidRequest {
  String? firebaseUid;

  factory GetOrCreateUserAccountModelByFirebaseUidRequest.fromJson(
          Map<String, dynamic> json) =>
      _$GetOrCreateUserAccountModelByFirebaseUidRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetOrCreateUserAccountModelByFirebaseUidRequestToJson(this);

  GetOrCreateUserAccountModelByFirebaseUidRequest({this.firebaseUid});
}
