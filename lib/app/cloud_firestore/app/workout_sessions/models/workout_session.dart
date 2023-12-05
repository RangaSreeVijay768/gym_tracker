import 'package:beebloom_gym_tracker/app/cloud_firestore/app/users/models/user_account_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/core/models/base_firestore_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

import '/app/cloud_firestore/app/users/models/converters/user_account_document_reference_converter.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'workout_session.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WorkoutSession extends BaseFirestoreEntity {
  DateTime? startTime;
  DateTime? endTime;

  @UserAccountDocumentReferenceConverter()
  DocumentReference<UserAccountModel> userAccount;

  factory WorkoutSession.fromJson(Map<String, dynamic> json) =>
      _$WorkoutSessionFromJson(json);

  Map<String, dynamic> toJson() => _$WorkoutSessionToJson(this);

  WorkoutSession(
      {this.startTime,
      this.endTime,
      required this.userAccount,
      super.createdTime,
      super.lastUpdatedTime});

  @override
  WorkoutSession copyWith(
      {DateTime? startTime,
      String? id,
      DateTime? endTime,
      DocumentReference<UserAccountModel>? userAccount,
      DateTime? createdTime,
      DateTime? lastUpdatedTime}) {
    return WorkoutSession(
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      userAccount: userAccount ?? this.userAccount,
    );
  }
}
