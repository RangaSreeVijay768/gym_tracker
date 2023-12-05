import 'dart:collection';

import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/models/workout_template_workout_model_set.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/core/repos/abstract_cloud_firestore_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../models/exercise_model.dart';
import '../models/workout_template_workout_model.dart';

@singleton
class WorkoutTemplateWorkoutModelSetRepo
    extends AbstractCloudFirestoreRepo<WorkoutTemplateWorkoutModelSet> {
  Future<QuerySnapshot<WorkoutTemplateWorkoutModelSet>>
      getAllWorkoutTemplateWorkoutModelSets() {
    return this.collectionRef.get();
  }

  WorkoutTemplateWorkoutModelSetRepo(super.cloudFirestoreClient);

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
    Query<WorkoutTemplateWorkoutModelSet> query = getCollectionReference();

    if (workoutTemplateWorkoutModelDocumentReference != null) {
      query.where('workoutTemplateWorkoutModelDocumentReference',
          isEqualTo: workoutTemplateWorkoutModelDocumentReference.id);
    }
    if (exerciseModelDocumentReference != null) {
      query.where('exerciseModelDocumentReference',
          isEqualTo: exerciseModelDocumentReference.id);
    }

    query = setLimits(query, documentSnapshot: lastDocumentSnapshot);
    query = setOrder(query, fieldName, descending: descending);

    return query.get();
  }

  @override
  String getCollectionName() {
    return 'workout_template_workout_model_sets';
  }

  @override
  FromFirestore<WorkoutTemplateWorkoutModelSet> getFromFirestore() {
    return (value, options) =>
        WorkoutTemplateWorkoutModelSet.fromJson(value.data() ?? HashMap());
  }

  @override
  ToFirestore<WorkoutTemplateWorkoutModelSet> getToFirestore() {
    return (value, options) => value.toJson();
  }
}
