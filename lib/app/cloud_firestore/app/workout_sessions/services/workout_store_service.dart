import 'package:beebloom_gym_tracker/app/cloud_firestore/app/workout_sessions/models/workout_session.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/workout_sessions/repos/workout_session_repo.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/create_workout_session/create_workout_session_request.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@singleton
class WorkoutStoreService {
  late WorkoutSessionRepo workoutSessionRepo;

  WorkoutStoreService(this.workoutSessionRepo);

  Future<DocumentReference<WorkoutSession>> createWorkoutSession(
      CreateWorkoutSessionRequest request) {
    return workoutSessionRepo.save(WorkoutSession(
        userAccount: request.userAccountModel!,
        startTime: request.startTime,
        endTime: request.endTime));
  }
}
