import 'package:beebloom_gym_tracker/app/cloud_firestore/app/users/models/user_account_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/users/models/workout_reminder_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/users/repo/user_account_repo.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/users/repo/workout_reminder_model_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class UsersStoreService {
  late UserAccountModelRepo userAccountModelRepo;
  late WorkoutReminderModelRepo workoutReminderModelRepo;

  UsersStoreService(this.userAccountModelRepo, this.workoutReminderModelRepo);

  Future<DocumentReference<UserAccountModel>> saveUserAccountModel(
      UserAccountModel userAccountModel) {
    return userAccountModelRepo.save(userAccountModel);
  }

  Future<QuerySnapshot<UserAccountModel>> getUserAccountsWithRemindersBetween(
      DateTime startTime, DateTime endTime) {
    return userAccountModelRepo.getUserAccountsWithRemindersBetween(
        startTime, endTime);
  }

  Future<QuerySnapshot<UserAccountModel>> getUserAccountModelsByFirebaseUid(
      String firebaseUID,
      {DocumentSnapshot<UserAccountModel>? lastDocumentSnapshot,
      num? count,
      String? fieldName,
      bool? descending}) {
    return userAccountModelRepo.getUserAccountModelsByFirebaseUid(firebaseUID,
        lastDocumentSnapshot: lastDocumentSnapshot,
        count: count,
        fieldName: fieldName,
        descending: descending);
  }

  Future<DocumentReference<UserAccountModel>>
      getOrCreateUserAccountModelByFirebaseUid(String firebaseUid) async {
    QuerySnapshot<UserAccountModel> userAccountModels =
        await getUserAccountModelsByFirebaseUid(firebaseUid);
    if (userAccountModels.size > 0) {
      return userAccountModels.docs.first.reference;
    } else {
      UserAccountModel userAccountModel =
          UserAccountModel(firebaseUid: firebaseUid);
      return (await saveUserAccountModel(userAccountModel));
    }
  }

  Future<void> setNetworkState(bool enabled) {
    if (enabled) {
      return userAccountModelRepo.cloudFirestoreClient.db.enableNetwork();
    } else {
      return userAccountModelRepo.cloudFirestoreClient.db.disableNetwork();
    }
  }

  Future<QuerySnapshot<UserAccountModel>> getAllUserAccounts() {
    return userAccountModelRepo.getAllUserAccounts();
  }

  Future<DocumentReference<UserAccountModel>>
      getUserAccountModelDocumentReference(String id) {
    return userAccountModelRepo.getDocumentReference(id);
  }

  Future<DocumentSnapshot<UserAccountModel>>
      getUserAccountModelDocumentSnapshot(String id) {
    return userAccountModelRepo.getDocumentSnapshot(id);
  }

  Future<DocumentReference<WorkoutReminderModel>> saveWorkoutReminderModel(
      WorkoutReminderModel workoutReminderModel) {
    return workoutReminderModelRepo.save(workoutReminderModel);
  }

  Future<DocumentReference<WorkoutReminderModel>>
      getWorkoutReminderModelDocumentReference(String id) {
    return workoutReminderModelRepo.getDocumentReference(id);
  }

  Future<DocumentSnapshot<WorkoutReminderModel>>
      getWorkoutReminderModelDocumentSnapshot(String id) {
    return workoutReminderModelRepo.getDocumentSnapshot(id);
  }

  Future<void> updateWorkoutReminderModel(
      DocumentReference<WorkoutReminderModel> object) {
    return workoutReminderModelRepo.update(object);
  }

  Future<void> deleteWorkoutReminderModel(
      DocumentReference<WorkoutReminderModel> object) {
    return workoutReminderModelRepo.delete(object);
  }

  Future<QuerySnapshot<WorkoutReminderModel>> getAllWorkoutReminderModels() {
    return workoutReminderModelRepo.getAllWorkoutReminderModels();
  }

  Future<QuerySnapshot<WorkoutReminderModel>>
      getAllWorkoutReminderModelsByUserAccountModel(
          DocumentReference<UserAccountModel>?
              userAccountModelDocumentReference,
          {DocumentSnapshot<WorkoutReminderModel>? lastDocumentSnapshot,
          num? count,
          String? fieldName,
          bool? descending}) {
    return workoutReminderModelRepo
        .getAllWorkoutReminderModelsByUserAccountModel(
            userAccountModelDocumentReference,
            lastDocumentSnapshot: lastDocumentSnapshot,
            count: count,
            fieldName: fieldName,
            descending: descending);
  }
}
