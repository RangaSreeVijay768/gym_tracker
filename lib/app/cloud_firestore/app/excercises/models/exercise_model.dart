import 'package:beebloom_gym_tracker/app/cloud_firestore/core/models/base_firestore_entity.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:beebloom_gym_tracker/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'exercise_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ExerciseModel extends BaseFirestoreEntity {
  String? exerciseName;
  String? exerciseDescription;
  List<String>? bodyParts;
  List<String>? types;
  List<String>? photos;
  List<String>? instructions;
  List<String>? videos;

  factory ExerciseModel.fromJson(Map<String, dynamic> json) =>
      _$ExerciseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ExerciseModelToJson(this);

  ExerciseModel(
      {this.exerciseName,
      this.exerciseDescription,
      this.bodyParts,
      this.types,
      this.photos,
      this.instructions,
      this.videos,
      super.id,
      super.createdTime,
      super.lastUpdatedTime});

  ExerciseModel copyWith(
      {String? exerciseName,
      String? exerciseDescription,
      List<String>? bodyParts,
      List<String>? types,
      List<String>? photos,
      List<String>? instructions,
      List<String>? videos,
      String? id,
      DateTime? createdTime,
      DateTime? lastUpdatedTime}) {
    return ExerciseModel(
      exerciseName: exerciseName ?? this.exerciseName,
      exerciseDescription: exerciseDescription ?? this.exerciseDescription,
      bodyParts: bodyParts ?? this.bodyParts,
      types: types ?? this.types,
      photos: photos ?? this.photos,
      instructions: instructions ?? this.instructions,
      videos: videos ?? this.videos,
    );
  }
}
