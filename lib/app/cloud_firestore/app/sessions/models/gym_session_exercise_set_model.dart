import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/models/converters/exercise_model_document_reference_converter.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/models/exercise_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/sessions/models/converters/gym_session_exercise_model_document_reference_converter.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/sessions/models/gym_session_exercise_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

import '/app/cloud_firestore/core/models/base_firestore_entity.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'gym_session_exercise_set_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class GymSessionExerciseSetModel extends BaseFirestoreEntity {
  @ExerciseModelDocumentReferenceConverter()
  DocumentReference<ExerciseModel>? exerciseModelDocumentReference;
  @GymSessionExerciseModelDocumentReferenceConverter()
  DocumentReference<GymSessionExerciseModel>?
      gymSessionExerciseModelDocumentReference;
  num? weight;
  String? units;
  num? repCount;
  DateTime? startTime;
  DateTime? endTime;
  num? order;

  factory GymSessionExerciseSetModel.fromJson(Map<String, dynamic> json) =>
      _$GymSessionExerciseSetModelFromJson(json);

  Map<String, dynamic> toJson() => _$GymSessionExerciseSetModelToJson(this);

  GymSessionExerciseSetModel(
      {this.exerciseModelDocumentReference,
      this.gymSessionExerciseModelDocumentReference,
      this.weight,
      this.units,
      this.repCount,
      this.startTime,
      this.endTime,
      this.order,
      super.id,
      super.createdTime,
      super.lastUpdatedTime});

  GymSessionExerciseSetModel copyWith(
      {DocumentReference<ExerciseModel>? exerciseModelDocumentReference,
      DocumentReference<GymSessionExerciseModel>?
          gymSessionExerciseModelDocumentReference,
      num? weight,
      String? units,
      num? repCount,
      DateTime? startTime,
      DateTime? endTime,
      num? order,
      String? id,
      DateTime? createdTime,
      DateTime? lastUpdatedTime}) {
    return GymSessionExerciseSetModel(
        exerciseModelDocumentReference: exerciseModelDocumentReference ??
            this.exerciseModelDocumentReference,
        gymSessionExerciseModelDocumentReference:
            gymSessionExerciseModelDocumentReference ??
                this.gymSessionExerciseModelDocumentReference,
        weight: weight ?? this.weight,
        units: units ?? this.units,
        repCount: repCount ?? this.repCount,
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
        order: order ?? this.order,
        id: id ?? this.id,
        createdTime: createdTime ?? super.createdTime,
        lastUpdatedTime: lastUpdatedTime ?? super.createdTime);
  }
}
