import 'dart:collection';

import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/models/exercise_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/core/repos/abstract_cloud_firestore_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@singleton
class ExerciseModelRepo extends AbstractCloudFirestoreRepo<ExerciseModel> {
  Future<QuerySnapshot<ExerciseModel>> getAllExerciseModels() {
    return this.collectionRef.get();
  }

  ExerciseModelRepo(super.cloudFirestoreClient);

  @override
  String getCollectionName() {
    return 'exercise_models';
  }

  @override
  FromFirestore<ExerciseModel> getFromFirestore() {
    return (value, options) =>
        ExerciseModel.fromJson(value.data() ?? HashMap());
  }

  @override
  ToFirestore<ExerciseModel> getToFirestore() {
    return (value, options) => value.toJson();
  }
}
