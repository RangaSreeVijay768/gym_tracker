import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/models/converters/exercise_model_document_reference_converter.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/models/converters/workout_template_model_document_reference_converter.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/models/exercise_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/models/workout_template_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

import '/app/cloud_firestore/core/models/base_firestore_entity.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'workout_template_workout_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WorkoutTemplateWorkoutModel extends BaseFirestoreEntity {
  @ExerciseModelDocumentReferenceConverter()
  DocumentReference<ExerciseModel>? exerciseModelDocumentReference;
  @WorkoutTemplateModelDocumentReferenceConverter()
  DocumentReference<WorkoutTemplateModel>?
      workoutTemplateModelDocumentReference;
  num? volume;
  String? units;
  num? order;

  factory WorkoutTemplateWorkoutModel.fromJson(Map<String, dynamic> json) =>
      _$WorkoutTemplateWorkoutModelFromJson(json);

  Map<String, dynamic> toJson() => _$WorkoutTemplateWorkoutModelToJson(this);

  WorkoutTemplateWorkoutModel(
      {this.exerciseModelDocumentReference,
      this.workoutTemplateModelDocumentReference,
      this.volume,
      this.units,
      this.order,
      super.id,
      super.createdTime,
      super.lastUpdatedTime});

  WorkoutTemplateWorkoutModel copyWith(
      {DocumentReference<ExerciseModel>? exerciseModelDocumentReference,
      DocumentReference<WorkoutTemplateModel>?
          workoutTemplateModelDocumentReference,
      num? volume,
      String? units,
      num? order,
      String? id,
      DateTime? createdTime,
      DateTime? lastUpdatedTime}) {
    return WorkoutTemplateWorkoutModel(
        exerciseModelDocumentReference: exerciseModelDocumentReference ??
            this.exerciseModelDocumentReference,
        workoutTemplateModelDocumentReference:
            workoutTemplateModelDocumentReference ??
                this.workoutTemplateModelDocumentReference,
        volume: volume ?? this.volume,
        units: units ?? this.units,
        order: order ?? this.order,
        id: id ?? this.id,
        createdTime: createdTime ?? super.createdTime,
        lastUpdatedTime: lastUpdatedTime ?? super.createdTime);
  }
}
