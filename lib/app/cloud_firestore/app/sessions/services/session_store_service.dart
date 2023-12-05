import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/models/exercise_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/sessions/models/gym_session_exercise_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/sessions/models/gym_session_exercise_set_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/sessions/models/gym_session_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/sessions/repos/gym_session_exercise_model_repo.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/sessions/repos/gym_session_exercise_set_model_repo.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/sessions/repos/gym_session_model_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../users/models/user_account_model.dart';

@singleton
class SessionStoreService {
  GymSessionExerciseModelRepo gymSessionExerciseModelRepo;
  GymSessionExerciseSetModelRepo gymSessionExerciseSetModelRepo;
  GymSessionModelRepo gymSessionModelRepo;

  SessionStoreService(this.gymSessionExerciseModelRepo,
      this.gymSessionExerciseSetModelRepo, this.gymSessionModelRepo);

  Future<DocumentReference<GymSessionModel>> saveGymSessionModel(
      GymSessionModel gymSessionModel) {
    return gymSessionModelRepo.save(gymSessionModel);
  }

  Future<QuerySnapshot<GymSessionModel>> getAllGymSessionsByUserAccountModels() {
    return gymSessionModelRepo.getAllGymSessionModels();
  }

  Future<DocumentReference<GymSessionModel>>
      getGymSessionModelDocumentReference(String id) {
    return gymSessionModelRepo.getDocumentReference(id);
  }

  Future<DocumentSnapshot<GymSessionModel>> getGymSessionModelDocumentSnapshot(
      String id) {
    return gymSessionModelRepo.getDocumentSnapshot(id);
  }

  Future<QuerySnapshot<GymSessionModel>>
  getGymSessionModelsByUserAccountModel(
      DocumentReference<UserAccountModel> userAccountModelDocumentReference,
      {DocumentSnapshot<GymSessionModel>? lastDocumentSnapshot,
        num? count,
        String? fieldName,
        bool? descending}) {
    return gymSessionModelRepo.getAllGymSessionModelsByUserAccountModel(
        userAccountModelDocumentReference,
      lastDocumentSnapshot: lastDocumentSnapshot,
      count: count,
      fieldName: fieldName,
      descending: descending
    );
  }

  Future<void> updateGymSessionModel(
      DocumentReference<GymSessionModel> object) {
    return gymSessionModelRepo.update(object);
  }

  Future<void> deleteGymSessionModel(
      DocumentReference<GymSessionModel> object) {
    return gymSessionModelRepo.delete(object);
  }

  Future<DocumentReference<GymSessionExerciseModel>>
      saveGymSessionExerciseModel(
          GymSessionExerciseModel gymSessionExerciseModel) {
    return gymSessionExerciseModelRepo.save(gymSessionExerciseModel);
  }


  Future<QuerySnapshot<GymSessionExerciseModel>> getAllGymSessionExerciseModels() {
    return gymSessionExerciseModelRepo.getAllGymSessionExerciseModels();
  }

  Future<DocumentReference<GymSessionExerciseModel>>
      getGymSessionExerciseModelDocumentReference(String id) {
    return gymSessionExerciseModelRepo.getDocumentReference(id);
  }

  Future<DocumentSnapshot<GymSessionExerciseModel>>
      getGymSessionExerciseModelDocumentSnapshot(String id) {
    return gymSessionExerciseModelRepo.getDocumentSnapshot(id);
  }

  Future<QuerySnapshot<GymSessionExerciseModel>>
      getGymSessionExerciseModelsByExerciseModel(
          DocumentReference<ExerciseModel> exerciseModelDocumentReference,
          {DocumentSnapshot<GymSessionExerciseModel>? lastDocumentSnapshot,
          num? count,
          String? fieldName,
          bool? descending}) {
    return gymSessionExerciseModelRepo
        .getGymSessionExerciseModelsByExerciseModel(
            exerciseModelDocumentReference,
            lastDocumentSnapshot: lastDocumentSnapshot,
            count: count,
            fieldName: fieldName,
            descending: descending);
  }

  Future<void> updateGymSessionExerciseModel(
      DocumentReference<GymSessionExerciseModel> object) {
    return gymSessionExerciseModelRepo.update(object);
  }

  Future<void> deleteGymSessionExerciseModel(
      DocumentReference<GymSessionExerciseModel> object) {
    return gymSessionExerciseModelRepo.delete(object);
  }

  Future<DocumentReference<GymSessionExerciseSetModel>>
      saveGymSessionExerciseSetModel(
          GymSessionExerciseSetModel gymSessionExerciseSetModel) {
    return gymSessionExerciseSetModelRepo.save(gymSessionExerciseSetModel);
  }

  Future<QuerySnapshot<GymSessionExerciseSetModel>> getAllGymSessionExerciseSetModels() {
    return gymSessionExerciseSetModelRepo.getAllGymSessionExerciseSetModels();
  }

  Future<DocumentReference<GymSessionExerciseSetModel>>
      getGymSessionExerciseSetModelDocumentReference(String id) {
    return gymSessionExerciseSetModelRepo.getDocumentReference(id);
  }

  Future<DocumentSnapshot<GymSessionExerciseSetModel>>
      getGymSessionExerciseSetModelDocumentSnapshot(String id) {
    return gymSessionExerciseSetModelRepo.getDocumentSnapshot(id);
  }

  Future<QuerySnapshot<GymSessionExerciseSetModel>>
      getGymSessionExerciseSetModelsByGymSessionExerciseModel(
          DocumentReference<GymSessionExerciseModel>
              gymSessionExerciseModelDocumentReference,
          {DocumentSnapshot<GymSessionExerciseSetModel>? lastDocumentSnapshot,
          num? count,
          String? fieldName,
          bool? descending}) {
    return gymSessionExerciseSetModelRepo
        .getAllGymSessionExerciseSetModelsByGymSessionExerciseModel(
            gymSessionExerciseModelDocumentReference,
            lastDocumentSnapshot: lastDocumentSnapshot,
            count: count,
            fieldName: fieldName,
            descending: descending);
  }

  Future<void> updateGymSessionExerciseSetModel(
      DocumentReference<GymSessionExerciseSetModel> object) {
    return gymSessionExerciseSetModelRepo.update(object);
  }

  Future<void> deleteGymSessionExerciseSetModel(
      DocumentReference<GymSessionExerciseSetModel> object) {
    return gymSessionExerciseSetModelRepo.delete(object);
  }
}
