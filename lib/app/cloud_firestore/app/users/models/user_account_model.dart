import 'package:beebloom_gym_tracker/app/cloud_firestore/core/models/base_firestore_entity.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/core/models/boolean_status_model.dart';
import 'package:json_annotation/json_annotation.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'user_account_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class UserAccountModel extends BaseFirestoreEntity {
  String? id;
  String? displayName;
  String? emailId;
  BooleanStatusModel? status;
  String? firebaseUid;

  factory UserAccountModel.fromJson(Map<String, dynamic> json) =>
      _$UserAccountModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserAccountModelToJson(this);

  UserAccountModel(
      {this.id,
      this.displayName,
      this.emailId,
      this.firebaseUid,
      super.createdTime,
      super.lastUpdatedTime});

  @override
  UserAccountModel copyWith(
      {String? id,
      String? firebaseUid,
      String? displayName,
      DateTime? createdTime,
      DateTime? lastUpdatedTime}) {
    return UserAccountModel(
        id: id ?? this.id,
        displayName: displayName ?? this.displayName,
        firebaseUid: firebaseUid ?? this.firebaseUid,
        createdTime: createdTime ?? super.createdTime,
        lastUpdatedTime: lastUpdatedTime ?? super.createdTime);
  }
}
