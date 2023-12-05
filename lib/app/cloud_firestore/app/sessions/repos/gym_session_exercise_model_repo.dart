import 'dart:collection';

import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/models/exercise_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/sessions/models/gym_session_exercise_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/core/repos/abstract_cloud_firestore_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@singleton
class GymSessionExerciseModelRepo
    extends AbstractCloudFirestoreRepo<GymSessionExerciseModel> {
  Future<QuerySnapshot<GymSessionExerciseModel>>
      getAllGymSessionExerciseModels() {
    return this.collectionRef.get();
  }

  GymSessionExerciseModelRepo(super.cloudFirestoreClient);

  Future<QuerySnapshot<GymSessionExerciseModel>>
      getGymSessionExerciseModelsByExerciseModel(
          DocumentReference<ExerciseModel> exerciseModelDocumentReference,
          {DocumentSnapshot<GymSessionExerciseModel>? lastDocumentSnapshot,
          num? count,
          String? fieldName,
          bool? descending}) {
    Query<GymSessionExerciseModel> query = getCollectionReference();

    if (exerciseModelDocumentReference != null) {
     query= query.where('exercise_model_document_reference',
          isEqualTo: exerciseModelDocumentReference.id);
    }
    query = setLimits(query, documentSnapshot: lastDocumentSnapshot);
    query = setOrder(query, fieldName, descending: descending);

    return query.get();
  }

  @override
  String getCollectionName() {
    return 'gym_session_exercise_models';
  }

  @override
  FromFirestore<GymSessionExerciseModel> getFromFirestore() {
    return (value, options) =>
        GymSessionExerciseModel.fromJson(value.data() ?? HashMap());
  }

  @override
  ToFirestore<GymSessionExerciseModel> getToFirestore() {
    return (value, options) => value.toJson();
  }
}
