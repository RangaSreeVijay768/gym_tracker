import 'dart:collection';

import 'package:beebloom_gym_tracker/app/cloud_firestore/app/sessions/models/gym_session_exercise_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/sessions/models/gym_session_exercise_set_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/core/repos/abstract_cloud_firestore_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@singleton
class GymSessionExerciseSetModelRepo
    extends AbstractCloudFirestoreRepo<GymSessionExerciseSetModel> {
  Future<QuerySnapshot<GymSessionExerciseSetModel>>
      getAllGymSessionExerciseSetModels() {
    return this.collectionRef.get();
  }

  GymSessionExerciseSetModelRepo(super.cloudFirestoreClient);

  Future<QuerySnapshot<GymSessionExerciseSetModel>>
      getAllGymSessionExerciseSetModelsByGymSessionExerciseModel(
          DocumentReference<GymSessionExerciseModel>
              gymSessionExerciseModelDocumentReference,
          {DocumentSnapshot<GymSessionExerciseSetModel>? lastDocumentSnapshot,
          num? count,
          String? fieldName,
          bool? descending}) {
    Query<GymSessionExerciseSetModel> query = getCollectionReference();

    if (gymSessionExerciseModelDocumentReference != null) {
      query=query.where('gym_session_exercise_model_document_reference',
          isEqualTo: gymSessionExerciseModelDocumentReference.id);
    }

    query = setLimits(query, documentSnapshot: lastDocumentSnapshot);
    query = setOrder(query, fieldName, descending: descending);

    return query.get();
  }

  @override
  String getCollectionName() {
    return 'gym_session_exercise_set_models';
  }

  @override
  FromFirestore<GymSessionExerciseSetModel> getFromFirestore() {
    return (value, options) =>
        GymSessionExerciseSetModel.fromJson(value.data() ?? HashMap());
  }

  @override
  ToFirestore<GymSessionExerciseSetModel> getToFirestore() {
    return (value, options) => value.toJson();
  }
}
