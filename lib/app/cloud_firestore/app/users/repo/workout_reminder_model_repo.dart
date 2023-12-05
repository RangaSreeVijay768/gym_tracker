import 'dart:collection';

import 'package:beebloom_gym_tracker/app/cloud_firestore/app/users/models/user_account_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/users/models/workout_reminder_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/core/repos/abstract_cloud_firestore_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@singleton
class WorkoutReminderModelRepo
    extends AbstractCloudFirestoreRepo<WorkoutReminderModel> {
  WorkoutReminderModelRepo(super.cloudFirestoreClient);

  Future<QuerySnapshot<WorkoutReminderModel>> getAllWorkoutReminderModels() {
    return this.collectionRef.get();
  }

  Future<QuerySnapshot<WorkoutReminderModel>>
      getAllWorkoutReminderModelsByUserAccountModel(
          DocumentReference<UserAccountModel>?
              userAccountModelDocumentReference,
          {DocumentSnapshot<WorkoutReminderModel>? lastDocumentSnapshot,
          num? count,
          String? fieldName,
          bool? descending}) {
    Query<WorkoutReminderModel> query = this.collectionRef;
    if (userAccountModelDocumentReference != null) {
     query= query.where('user_account_reference',
          isEqualTo: userAccountModelDocumentReference.id);
    }
    query = setLimits(query, documentSnapshot: lastDocumentSnapshot);
    query = setOrder(query, fieldName, descending: descending);

    return query.get();
  }

  @override
  String getCollectionName() {
    return 'workout_reminders';
  }

  @override
  FromFirestore<WorkoutReminderModel> getFromFirestore() {
    return (value, options) =>
        WorkoutReminderModel.fromJson(value.data() ?? HashMap());
  }

  @override
  ToFirestore<WorkoutReminderModel> getToFirestore() {
    return (value, options) => value.toJson();
  }
}
