import 'package:json_annotation/json_annotation.dart';

import '../../core/models/common/converters/date_time_to_iso_converter.dart';
import '/app/core/models/common/base_entity.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'exercise.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Exercise extends BaseEntity {
  String? exerciseName;
  String? exerciseDescription;
  String? exerciseId;
  List<String>? bodyParts;
  List<String>? types;
  List<String>? photos;
  List<String>? instructions;
  List<String>? videos;

  factory Exercise.fromJson(Map<String, dynamic> json) =>
      _$ExerciseFromJson(json);

  Map<String, dynamic> toJson() => _$ExerciseToJson(this);

  Exercise(
      {this.exerciseName,
      this.exerciseDescription,
      this.exerciseId,
      this.bodyParts,
      this.types,
      this.photos,
      this.instructions,
      this.videos,
      super.id,
      super.createdTime,
      super.lastUpdatedTime});

  Exercise copyWith(
      {String? exerciseName,
      String? exerciseDescription,
      String? exerciseId,
      List<String>? bodyParts,
      List<String>? types,
      List<String>? photos,
      List<String>? instructions,
      List<String>? videos,
      String? id,
      DateTime? createdTime,
      DateTime? lastUpdatedTime}) {
    return Exercise(
        exerciseName: exerciseName ?? this.exerciseName,
        exerciseDescription: exerciseDescription ?? this.exerciseDescription,
        exerciseId: exerciseId ?? this.exerciseId,
        bodyParts: bodyParts ?? this.bodyParts,
        types: types ?? this.types,
        photos: photos ?? this.photos,
        instructions: instructions ?? this.instructions,
        videos: videos ?? this.videos,
        id: id ?? this.id,
        createdTime: createdTime ?? super.createdTime,
        lastUpdatedTime: lastUpdatedTime ?? super.createdTime);
  }
}
