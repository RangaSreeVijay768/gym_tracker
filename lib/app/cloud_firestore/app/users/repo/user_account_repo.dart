
import 'dart:collection';

import 'package:beebloom_gym_tracker/app/cloud_firestore/core/repos/abstract_cloud_firestore_repo.dart';
import 'package:beebloom_gym_tracker/app/core/logger/log.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../models/user_account_model.dart';

@singleton
class UserAccountModelRepo
    extends AbstractCloudFirestoreRepo<UserAccountModel> {
  Future<QuerySnapshot<UserAccountModel>> getAllUserAccounts() {
    return this.collectionRef.get();
  }

  Future<QuerySnapshot<UserAccountModel>> getUserAccountsWithRemindersBetween(
      DateTime startTime, DateTime endTime) {
    final workoutRemindersRef =
        new FieldPath(['workout_reminders', 'random_number']);
    cloudFirestoreClient.db
        .collectionGroup('workout_reminders')
        .where('random_number', isGreaterThan: 1)
        .where('random_number', isLessThanOrEqualTo: 10)
        .get()
        .then((value) {
      logger.d(value.docs);
    });
    return this.collectionRef.get();
  }

  Future<QuerySnapshot<UserAccountModel>>
    getUserAccountModelsByFirebaseUid(String firebaseUid,
        {DocumentSnapshot<UserAccountModel>? lastDocumentSnapshot,
          num? count,
          String? fieldName,
          bool? descending}) {
      Query<UserAccountModel> query = getCollectionReference();

      logger.d("Firebase UId: ${firebaseUid}");
      if (firebaseUid != null) {
        logger.d("Firebase UId: ${firebaseUid}");
         query=   query.where('firebase_uid',
                isEqualTo: firebaseUid);
          }
      query = setLimits(query, documentSnapshot: lastDocumentSnapshot);
      query = setOrder(query, fieldName, descending: descending);

      return query.get();
    }

  UserAccountModelRepo(super.cloudFirestoreClient);

  @override
  String getCollectionName() {
    return 'user_accounts';
  }

  @override
  FromFirestore<UserAccountModel> getFromFirestore() {
    return (value, options) =>
        UserAccountModel.fromJson(value.data() ?? HashMap());
  }

  @override
  ToFirestore<UserAccountModel> getToFirestore() {
    return (value, options) => value.toJson();
  }
}
