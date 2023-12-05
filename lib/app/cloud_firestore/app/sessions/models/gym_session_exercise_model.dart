import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/models/converters/exercise_model_document_reference_converter.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/models/exercise_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/sessions/models/converters/gym_session_exercise_model_document_reference_converter.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/sessions/models/converters/gym_session_model_document_reference_converter.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/sessions/models/gym_session_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

import '/app/cloud_firestore/core/models/base_firestore_entity.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'gym_session_exercise_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class GymSessionExerciseModel extends BaseFirestoreEntity {
  DateTime? startTime;
  DateTime? endTime;
  @ExerciseModelDocumentReferenceConverter()
  DocumentReference<ExerciseModel>? exerciseModelDocumentReference;
  @GymSessionModelDocumentReferenceConverter()
  DocumentReference<GymSessionModel>? gymSessionModelDocumentReference;
  num? volume;
  String? units;
  num? order;

  factory GymSessionExerciseModel.fromJson(Map<String, dynamic> json) =>
      _$GymSessionExerciseModelFromJson(json);

  Map<String, dynamic> toJson() => _$GymSessionExerciseModelToJson(this);

  GymSessionExerciseModel(
      {this.startTime,
      this.endTime,
      this.exerciseModelDocumentReference,
      this.gymSessionModelDocumentReference,
      this.volume,
      this.units,
      this.order,
      super.id,
      super.createdTime,
      super.lastUpdatedTime});

  GymSessionExerciseModel copyWith(
      {DateTime? startTime,
      DateTime? endTime,
      DocumentReference<ExerciseModel>? exerciseModelDocumentReference,
      DocumentReference<GymSessionModel>?
      gymSessionModelDocumentReference,
      num? volume,
      String? units,
      num? order,
      String? id,
      DateTime? createdTime,
      DateTime? lastUpdatedTime}) {
    return GymSessionExerciseModel(
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
        gymSessionModelDocumentReference:
        gymSessionModelDocumentReference ??
                this.gymSessionModelDocumentReference,
        exerciseModelDocumentReference: exerciseModelDocumentReference ??
            this.exerciseModelDocumentReference,
        volume: volume ?? this.volume,
        units: units ?? this.units,
        order: order ?? this.order,
        id: id ?? this.id,
        createdTime: createdTime ?? super.createdTime,
        lastUpdatedTime: lastUpdatedTime ?? super.createdTime);
  }
}
