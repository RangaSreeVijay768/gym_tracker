import 'package:beebloom_gym_tracker/app/core/models/common/converters/date_time_to_iso_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_firestore_entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class BaseFirestoreEntity {
  String? id;
  @DateTimeToIsoConverter()
  DateTime? createdTime;
  @DateTimeToIsoConverter()
  DateTime? lastUpdatedTime;

  factory BaseFirestoreEntity.fromJson(Map<String, dynamic> json) =>
      _$BaseFirestoreEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BaseFirestoreEntityToJson(this);

  BaseFirestoreEntity({
    this.id,
    this.createdTime,
    this.lastUpdatedTime,
  });

  BaseFirestoreEntity copyWith({
    String? id,
    DateTime? createdTime,
    DateTime? lastUpdatedTime,
  }) {
    return BaseFirestoreEntity(
      id: id ?? this.id,
      createdTime: createdTime ?? this.createdTime,
      lastUpdatedTime: lastUpdatedTime ?? this.lastUpdatedTime,
    );
  }
}
