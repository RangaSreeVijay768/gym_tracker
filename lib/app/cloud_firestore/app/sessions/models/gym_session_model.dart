import 'package:beebloom_gym_tracker/app/cloud_firestore/app/users/models/converters/user_account_document_reference_converter.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/users/models/user_account_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

import '/app/cloud_firestore/core/models/base_firestore_entity.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'gym_session_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class GymSessionModel extends BaseFirestoreEntity {
  @UserAccountDocumentReferenceConverter()
  DocumentReference<UserAccountModel>? userAccountModelDocumentReference;
  DateTime? startTime;
  DateTime? endTime;
  List<String>? bodyParts;
  List<String>? types;

  factory GymSessionModel.fromJson(Map<String, dynamic> json) =>
      _$GymSessionModelFromJson(json);

  Map<String, dynamic> toJson() => _$GymSessionModelToJson(this);

  GymSessionModel(
      {this.userAccountModelDocumentReference,
      this.startTime,
      this.endTime,
      this.bodyParts,
      this.types,
      super.id,
      super.createdTime,
      super.lastUpdatedTime});

  GymSessionModel copyWith(
      {DocumentReference<UserAccountModel>? userAccountModelDocumentReference,
      DateTime? startTime,
      DateTime? endTime,
      List<String>? bodyParts,
      List<String>? types,
      String? id,
      DateTime? createdTime,
      DateTime? lastUpdatedTime}) {
    return GymSessionModel(
        userAccountModelDocumentReference: userAccountModelDocumentReference ??
            this.userAccountModelDocumentReference,
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
        bodyParts: bodyParts ?? this.bodyParts,
        types: types ?? this.types,
        id: id ?? this.id,
        createdTime: createdTime ?? super.createdTime,
        lastUpdatedTime: lastUpdatedTime ?? super.createdTime);
  }
}
