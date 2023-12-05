import 'package:json_annotation/json_annotation.dart';
import '../../core/models/users/user_account.dart';
import '/app/core/models/common/base_entity.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'gym_session.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GymSession extends BaseEntity {
  DateTime? startTime;
  DateTime? endTime;
  List<String>? bodyParts;
  List<String>? types;
  UserAccount? userAccount;
  String? userAccountId;

  factory GymSession.fromJson(Map<String, dynamic> json) =>
      _$GymSessionFromJson(json);

  Map<String, dynamic> toJson() => _$GymSessionToJson(this);

  GymSession(
      {super.createdTime,
      super.lastUpdatedTime,
      this.startTime,
      this.endTime,
      this.bodyParts,
      this.types,
      this.userAccount,
      this.userAccountId,
      super.id});

  @override
  GymSession copyWith(
      {DateTime? startTime,
      DateTime? endTime,
      List<String>? bodyParts,
      List<String>? types,
      UserAccount? userAccount,
      String? userAccountId,
      String? id,
      DateTime? createdTime,
      DateTime? lastUpdatedTime}) {
    return GymSession(
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
        bodyParts: bodyParts ?? this.bodyParts,
        types: types ?? this.types,
        userAccount: userAccount ?? this.userAccount,
        userAccountId: userAccountId ?? this.userAccountId,
        id: id ?? this.id,
        createdTime: createdTime ?? super.createdTime,
        lastUpdatedTime: lastUpdatedTime ?? super.createdTime);
  }
}
