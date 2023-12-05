import 'dart:collection';

import 'package:beebloom_gym_tracker/app/cloud_firestore/app/workout_sessions/models/workout_session.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/core/repos/abstract_cloud_firestore_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@singleton
class WorkoutSessionRepo extends AbstractCloudFirestoreRepo<WorkoutSession> {
  WorkoutSessionRepo(super.cloudFirestoreClient);

  @override
  String getCollectionName() {
    return 'workout_sessions';
  }

  @override
  FromFirestore<WorkoutSession> getFromFirestore() {
    return (value, options) =>
        WorkoutSession.fromJson(value.data() ?? HashMap());
  }

  @override
  ToFirestore<WorkoutSession> getToFirestore() {
    return (value, options) => value.toJson();
  }
}
