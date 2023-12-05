import 'package:beebloom_gym_tracker/app/cloud_firestore/app/users/models/user_account_model.dart';
import 'package:json_annotation/json_annotation.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'get_all_user_account_models_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetAllUserAccountModelsRequest {
  factory GetAllUserAccountModelsRequest.fromJson(Map<String, dynamic> json) =>
      _$GetAllUserAccountModelsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllUserAccountModelsRequestToJson(this);

  GetAllUserAccountModelsRequest();
}
