import 'package:beebloom_gym_tracker/app/cloud_firestore/app/users/models/converters/user_account_document_reference_converter.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/users/models/user_account_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

import '/app/cloud_firestore/core/models/base_firestore_entity.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'workout_template_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake,explicitToJson: true)
class WorkoutTemplateModel extends BaseFirestoreEntity {
  List<String>? bodyParts;
  List<String>? types;
  @UserAccountDocumentReferenceConverter()
  DocumentReference<UserAccountModel>? createdBy;

  factory WorkoutTemplateModel.fromJson(Map<String, dynamic> json) =>
      _$WorkoutTemplateModelFromJson(json);

  Map<String, dynamic> toJson() => _$WorkoutTemplateModelToJson(this);

  WorkoutTemplateModel(
      {this.bodyParts,
      this.types,
      this.createdBy,
      super.id,
      super.createdTime,
      super.lastUpdatedTime});

  WorkoutTemplateModel copyWith(
      {List<String>? bodyParts,
      List<String>? types,
      DocumentReference<UserAccountModel>? createdBy,
      String? id,
      DateTime? createdTime,
      DateTime? lastUpdatedTime}) {
    return WorkoutTemplateModel(
        bodyParts: bodyParts ?? this.bodyParts,
        types: types ?? this.types,
        createdBy: createdBy ?? this.createdBy,
        id:id??this.id,
        createdTime: createdTime ?? super.createdTime,
        lastUpdatedTime: lastUpdatedTime ?? super.createdTime);
  }
}
