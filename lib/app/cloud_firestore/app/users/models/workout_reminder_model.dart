import 'package:beebloom_gym_tracker/app/cloud_firestore/app/users/models/converters/user_account_document_reference_converter.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/users/models/user_account_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/core/models/base_firestore_entity.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/core/models/boolean_status_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'workout_reminder_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WorkoutReminderModel extends BaseFirestoreEntity {
  String? name;
  @DateTimeToIsoConverter()
  DateTime? time;
  @UserAccountDocumentReferenceConverter()
  DocumentReference<UserAccountModel>? userAccountReference;
  BooleanStatusModel? status;

  factory WorkoutReminderModel.fromJson(Map<String, dynamic> json) =>
      _$WorkoutReminderModelFromJson(json);

  Map<String, dynamic> toJson() => _$WorkoutReminderModelToJson(this);

  WorkoutReminderModel copyWith({
    String? id,
    String? name,
    BooleanStatusModel? status,
    DateTime? time,
    DocumentReference<UserAccountModel>? userAccountReference,
    DateTime? createdTime,
    DateTime? lastUpdatedTime,
  }) {
    return WorkoutReminderModel(
      name: name ?? this.name,
      status: status ?? this.status,
      time: time ?? this.time,
      userAccountReference: userAccountReference ?? this.userAccountReference,
    );
  }

  WorkoutReminderModel(
      {this.name,
      this.time,
      this.userAccountReference,
      this.status,
      super.createdTime,
      super.lastUpdatedTime,
      super.id});
}
