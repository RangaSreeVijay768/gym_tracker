import 'dart:collection';

import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/models/workout_template_workout_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/users/models/user_account_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/core/repos/abstract_cloud_firestore_repo.dart';
import 'package:beebloom_gym_tracker/app/core/logger/log.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../models/exercise_model.dart';
import '../models/workout_template_model.dart';

@singleton
class WorkoutTemplateWorkoutModelRepo
    extends AbstractCloudFirestoreRepo<WorkoutTemplateWorkoutModel> {
  Future<QuerySnapshot<WorkoutTemplateWorkoutModel>>
      getAllWorkoutTemplateWorkoutModels() {
    return this.collectionRef.get();
  }

  WorkoutTemplateWorkoutModelRepo(super.cloudFirestoreClient);

  Future<QuerySnapshot<WorkoutTemplateWorkoutModel>>
      getWorkoutTemplateWorkoutModelByWorkoutTemplateWorkoutModel(
          DocumentReference<ExerciseModel> exerciseModelDocumentReference,
          DocumentReference<WorkoutTemplateModel>
              workoutTemplateModelDocumentReference,

          {DocumentSnapshot<WorkoutTemplateWorkoutModel>? lastDocumentSnapshot,
          num? count,
          String? fieldName,
          bool? descending}) {
    Query<WorkoutTemplateWorkoutModel> query = getCollectionReference();

    if (exerciseModelDocumentReference != null) {
      query.where('exerciseModelDocumentReference',
          isEqualTo: exerciseModelDocumentReference.id);
    }
    if (workoutTemplateModelDocumentReference != null) {
      query.where('workoutTemplateModelDocumentReference',
          isEqualTo: workoutTemplateModelDocumentReference.id);
    }

    query = setLimits(query, documentSnapshot: lastDocumentSnapshot);
    query = setOrder(query, fieldName, descending: descending);

    return query.get();
  }

  @override
  String getCollectionName() {
    return 'workout_template_workout_models';
  }

  @override
  FromFirestore<WorkoutTemplateWorkoutModel> getFromFirestore() {
    return (value, options) =>
        WorkoutTemplateWorkoutModel.fromJson(value.data() ?? HashMap());
  }

  @override
  ToFirestore<WorkoutTemplateWorkoutModel> getToFirestore() {
    return (value, options) => value.toJson();
  }
}
