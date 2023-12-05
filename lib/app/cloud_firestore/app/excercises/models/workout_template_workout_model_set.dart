import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/models/converters/exercise_model_document_reference_converter.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/models/converters/workout_template_workout_model_document_reference_converter.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/models/exercise_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/models/workout_template_workout_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

import '/app/cloud_firestore/core/models/base_firestore_entity.dart';
import '/app/core/models/common/converters/date_time_to_iso_converter.dart';

part 'workout_template_workout_model_set.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WorkoutTemplateWorkoutModelSet extends BaseFirestoreEntity {
  @WorkoutTemplateModelWorkoutDocumentReferenceConverter()
  DocumentReference<WorkoutTemplateWorkoutModel>?
      workoutTemplateWorkoutModelDocumentReference;
  @ExerciseModelDocumentReferenceConverter()
  DocumentReference<ExerciseModel>? exerciseModelDocumentReference;
  num? weight;
  String? units;
  num? repCount;
  DateTime? startTime;
  DateTime? endTime;
  num? order;

  factory WorkoutTemplateWorkoutModelSet.fromJson(Map<String, dynamic> json) =>
      _$WorkoutTemplateWorkoutModelSetFromJson(json);

  Map<String, dynamic> toJson() => _$WorkoutTemplateWorkoutModelSetToJson(this);

  WorkoutTemplateWorkoutModelSet(
      {required this.workoutTemplateWorkoutModelDocumentReference,
      required this.exerciseModelDocumentReference,
      this.weight,
      this.units,
      this.repCount,
      this.startTime,
      this.endTime,
      this.order,
      super.id,
      super.createdTime,
      super.lastUpdatedTime});

  WorkoutTemplateWorkoutModelSet copyWith(
      {DocumentReference<WorkoutTemplateWorkoutModel>?
          workoutTemplateWorkoutModelDocumentReference,
      DocumentReference<ExerciseModel>? exerciseModelDocumentReference,
      num? weight,
      String? units,
      num? repCount,
      DateTime? startTime,
      DateTime? endTime,
      num? order,
      String? id,
      DateTime? createdTime,
      DateTime? lastUpdatedTime}) {
    return WorkoutTemplateWorkoutModelSet(
        workoutTemplateWorkoutModelDocumentReference:
            workoutTemplateWorkoutModelDocumentReference ??
                this.workoutTemplateWorkoutModelDocumentReference,
        exerciseModelDocumentReference: exerciseModelDocumentReference ??
            this.exerciseModelDocumentReference,
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
