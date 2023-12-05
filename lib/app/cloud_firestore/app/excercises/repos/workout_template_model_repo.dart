import 'dart:collection';

import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/models/workout_template_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/core/repos/abstract_cloud_firestore_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../users/models/user_account_model.dart';

@singleton
class WorkoutTemplateModelRepo
    extends AbstractCloudFirestoreRepo<WorkoutTemplateModel> {
  Future<QuerySnapshot<WorkoutTemplateModel>> getAllWorkoutTemplateModels() {
    return this.collectionRef.get();
  }

  WorkoutTemplateModelRepo(super.cloudFirestoreClient);

  Future<QuerySnapshot<WorkoutTemplateModel>>
  getWorkoutTemplateModelByWorkoutTemplateModel(
  DocumentReference<UserAccountModel> createdBy,

      {DocumentSnapshot<WorkoutTemplateModel>? lastDocumentSnapshot,
        num? count,
        String? fieldName,
        bool? descending}) {
    Query<WorkoutTemplateModel> query = getCollectionReference();

    if (createdBy != null) {
      query.where('createdBy',
          isEqualTo: createdBy.id);
    }

    query = setLimits(query, documentSnapshot: lastDocumentSnapshot);
    query = setOrder(query, fieldName, descending: descending);

    return query.get();
  }


  @override
  String getCollectionName() {
    return 'workout_template_models';
  }

  @override
  FromFirestore<WorkoutTemplateModel> getFromFirestore() {
    return (value, options) =>
        WorkoutTemplateModel.fromJson(value.data() ?? HashMap());
  }

  @override
  ToFirestore<WorkoutTemplateModel> getToFirestore() {
    return (value, options) => value.toJson();
  }
}
