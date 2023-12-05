import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/models/exercise_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/models/workout_template_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/models/workout_template_workout_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/models/workout_template_workout_model_set.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/repos/exercise_model_repo.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/repos/workout_template_model_repo.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/repos/workout_template_workout_model_repo.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/repos/workout_template_workout_model_set_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../users/models/user_account_model.dart';

@singleton
class ExerciseStoreService {
  ExerciseModelRepo exerciseModelRepo;
  WorkoutTemplateModelRepo workoutTemplateModelRepo;
  WorkoutTemplateWorkoutModelRepo workoutTemplateWorkoutModelRepo;
  WorkoutTemplateWorkoutModelSetRepo workoutTemplateWorkoutModelSetRepo;

  ExerciseStoreService(
      this.exerciseModelRepo,
      this.workoutTemplateModelRepo,
      this.workoutTemplateWorkoutModelRepo,
      this.workoutTemplateWorkoutModelSetRepo);

  Future<DocumentReference<ExerciseModel>> saveExerciseModel(
      ExerciseModel exerciseModel) {
    return exerciseModelRepo.save(exerciseModel);
  }

  Future<DocumentReference<ExerciseModel>> getExerciseModel(String id) {
    return exerciseModelRepo.getDocumentReference(id);
  }

  Future<void> updateExerciseModel(DocumentReference<ExerciseModel> object) {
    return exerciseModelRepo.update(object);
  }

  Future<void> deleteExerciseModel(DocumentReference<ExerciseModel> object) {
    return exerciseModelRepo.delete(object);
  }

  Future<QuerySnapshot<ExerciseModel>> getAllExerciseModels() {
    return exerciseModelRepo.getAllExerciseModels();
  }

  Future<QuerySnapshot<WorkoutTemplateModel>> getAllWorkoutTemplateModels() {
    return workoutTemplateModelRepo.getAllWorkoutTemplateModels();
  }

  Future<DocumentReference<WorkoutTemplateModel>> saveWorkoutTemplateModel(
      WorkoutTemplateModel workoutTemplateModel) {
    return workoutTemplateModelRepo.save(workoutTemplateModel);
  }

  Future<DocumentReference<ExerciseModel>> getExerciseModelDocumentReference(
      String id) {
    return exerciseModelRepo.getDocumentReference(id);
  }

  Future<DocumentReference<WorkoutTemplateModel>>
      getWorkoutTemplateModelDocumentReference(String id) {
    return workoutTemplateModelRepo.getDocumentReference(id);
  }

  Future<QuerySnapshot<WorkoutTemplateModel>>
      getWorkoutTemplateModelByWorkoutTemplateModel(
          DocumentReference<UserAccountModel> createdBy,
          {DocumentSnapshot<WorkoutTemplateModel>? lastDocumentSnapshot,
          num? count,
          String? fieldName,
          bool? descending}) {
    return workoutTemplateModelRepo
        .getWorkoutTemplateModelByWorkoutTemplateModel(createdBy,
            lastDocumentSnapshot: lastDocumentSnapshot,
            count: count,
            fieldName: fieldName,
            descending: descending);
  }

  Future<DocumentSnapshot<WorkoutTemplateModel>>
      getWorkoutTemplateModelDocumentSnapshot(String id) {
    return workoutTemplateModelRepo.getDocumentSnapshot(id);
  }

  Future<void> updateWorkoutTemplateModel(
      DocumentReference<WorkoutTemplateModel> object) {
    return workoutTemplateModelRepo.update(object);
  }

  Future<void> deleteWorkoutTemplateModel(
      DocumentReference<WorkoutTemplateModel> object) {
    return workoutTemplateModelRepo.delete(object);
  }

  Future<DocumentReference<WorkoutTemplateWorkoutModel>>
      saveWorkoutTemplateWorkoutModel(
          WorkoutTemplateWorkoutModel workoutTemplateWorkoutModel) {
    return workoutTemplateWorkoutModelRepo.save(workoutTemplateWorkoutModel);
  }

  Future<DocumentReference<WorkoutTemplateWorkoutModel>>
      getWorkoutTemplateWorkoutModelDocumentReference(String id) {
    return workoutTemplateWorkoutModelRepo.getDocumentReference(id);
  }

  Future<DocumentSnapshot<WorkoutTemplateWorkoutModel>>
      getWorkoutTemplateWorkoutModelDocumentSnapshot(String id) {
    return workoutTemplateWorkoutModelRepo.getDocumentSnapshot(id);
  }

  Future<QuerySnapshot<WorkoutTemplateWorkoutModel>>
      getWorkoutTemplateWorkoutModelByWorkoutTemplateWorkoutModel(
          DocumentReference<ExerciseModel> exerciseModelDocumentReference,
          DocumentReference<WorkoutTemplateModel>
              workoutTemplateModelDocumentReference,
          {DocumentSnapshot<WorkoutTemplateWorkoutModel>? lastDocumentSnapshot,
          num? count,
          String? fieldName,
          bool? descending}) {
    return workoutTemplateWorkoutModelRepo
        .getWorkoutTemplateWorkoutModelByWorkoutTemplateWorkoutModel(
            exerciseModelDocumentReference,
            workoutTemplateModelDocumentReference,
            lastDocumentSnapshot: lastDocumentSnapshot,
            count: count,
            fieldName: fieldName,
            descending: descending);
  }

  Future<void> updateWorkoutTemplateWorkoutModel(
      DocumentReference<WorkoutTemplateWorkoutModel> object) {
    return workoutTemplateWorkoutModelRepo.update(object);
  }

  Future<void> deleteWorkoutTemplateWorkoutModel(
      DocumentReference<WorkoutTemplateWorkoutModel> object) {
    return workoutTemplateWorkoutModelRepo.delete(object);
  }

  Future<DocumentReference<WorkoutTemplateWorkoutModelSet>>
      saveWorkoutTemplateWorkoutModelSet(
          WorkoutTemplateWorkoutModelSet workoutTemplateWorkoutModelSet) {
    return workoutTemplateWorkoutModelSetRepo
        .save(workoutTemplateWorkoutModelSet);
  }

  Future<DocumentReference<WorkoutTemplateWorkoutModelSet>>
      getWorkoutTemplateWorkoutModelSetDocumentReference(String id) {
    return workoutTemplateWorkoutModelSetRepo.getDocumentReference(id);
  }

  Future<DocumentSnapshot<WorkoutTemplateWorkoutModelSet>>
      getWorkoutTemplateWorkoutModelSetDocumentSnapshot(String id) {
    return workoutTemplateWorkoutModelSetRepo.getDocumentSnapshot(id);
  }

  Future<QuerySnapshot<WorkoutTemplateWorkoutModelSet>>
      getWorkoutTemplateWorkoutModelByWorkoutTemplateWorkoutModelSet(
          DocumentReference<WorkoutTemplateWorkoutModel>
              workoutTemplateWorkoutModelDocumentReference,
          DocumentReference<ExerciseModel>? exerciseModelDocumentReference,
          {DocumentSnapshot<WorkoutTemplateWorkoutModelSet>?
              lastDocumentSnapshot,
          num? count,
          String? fieldName,
          bool? descending}) {
    return workoutTemplateWorkoutModelSetRepo
        .getWorkoutTemplateWorkoutModelByWorkoutTemplateWorkoutModelSet(
            workoutTemplateWorkoutModelDocumentReference,
            exerciseModelDocumentReference,
            lastDocumentSnapshot: lastDocumentSnapshot,
            count: count,
            fieldName: fieldName,
            descending: descending);
  }

  Future<void> updateWorkoutTemplateWorkoutModelSet(
      DocumentReference<WorkoutTemplateWorkoutModelSet> object) {
    return workoutTemplateWorkoutModelSetRepo.update(object);
  }

  Future<void> deleteWorkoutTemplateWorkoutModelSet(
      DocumentReference<WorkoutTemplateWorkoutModelSet> object) {
    return workoutTemplateWorkoutModelSetRepo.delete(object);
  }
}
