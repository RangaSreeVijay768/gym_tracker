import 'package:beebloom_gym_tracker/app/cloud_firestore/app/sessions/models/gym_session_exercise_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/sessions/models/gym_session_exercise_set_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/sessions/models/gym_session_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/sessions/services/session_store_service.dart';
import 'package:beebloom_gym_tracker/app/core/logger/log.dart';
import 'package:beebloom_gym_tracker/app/entities/exercises/exercise.dart';
import 'package:beebloom_gym_tracker/app/entities/sessions/gym_session_exercise_set.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/create_gym_session_exercise/create_gym_session_exercise_request.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/create_gym_session_exercise/create_gym_session_exercise_response.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/create_gym_session_exercise_set/create_gym_session_exercise_set_request.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/create_gym_session_exercise_set/create_gym_session_exercise_set_response.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/get_all_gym_session_exercise_sets/get_all_gym_session_exercise_sets_request.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/get_all_gym_session_exercise_sets/get_all_gym_session_exercise_sets_response.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/get_all_gym_session_exercises/get_all_gym_session_exercises_request.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/get_all_gym_session_exercises/get_all_gym_session_exercises_response.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/get_all_gym_sessions_by_user_account/get_all_gym_sessions_by_user_account_request.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/get_all_gym_sessions_by_user_account/get_all_gym_sessions_by_user_account_response.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/get_gym_session/get_gym_session_request.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/get_gym_session/get_gym_session_response.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/get_gym_session_exercise/get_gym_session_exercise_request.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/get_gym_session_exercise/get_gym_session_exercise_response.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/get_gym_session_exercise_models_by_exercise_model/get_gym_session_exercise_models_by_exercise_model_response.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/get_gym_session_exercise_set/get_gym_session_exercise_set_request.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/get_gym_session_exercise_set/get_gym_session_exercise_set_response.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/get_gym_session_exercise_set_models_by_gym_session_exercise_model/get_gym_session_exercise_set_models_by_gym_session_exercise_model_response.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/get_gym_session_models_by_user_account_model/get_gym_session_models_by_user_account_model_response.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../cloud_firestore/app/excercises/models/exercise_model.dart';
import '../../cloud_firestore/app/excercises/services/exercise_store_service.dart';
import '../../cloud_firestore/app/users/models/user_account_model.dart';
import '../../cloud_firestore/app/users/services/users_store_service.dart';
import '../../entities/exceptions/not_found_exception.dart';
import '../../entities/sessions/gym_session.dart';
import '../../entities/sessions/gym_session_exercise.dart';
import 'models/create_gym_session/create_gym_session_request.dart';
import 'models/create_gym_session/create_gym_session_response.dart';
import 'models/get_gym_session_exercise_models_by_exercise_model/get_gym_session_exercise_models_by_exercise_model_request.dart';
import 'models/get_gym_session_exercise_set_models_by_gym_session_exercise_model/get_gym_session_exercise_set_models_by_gym_session_exercise_model_request.dart';
import 'models/get_gym_session_models_by_user_account_model/get_gym_session_models_by_user_account_model_request.dart';

@singleton
class SessionFireStoreClient {
  SessionStoreService sessionStoreService;
  UsersStoreService usersStoreService;
  ExerciseStoreService exerciseStoreService;

  SessionFireStoreClient(this.sessionStoreService, this.usersStoreService,
      this.exerciseStoreService);

  Future<CreateGymSessionResponse> createGymSession(
      CreateGymSessionRequest request) async {
    GymSessionModel gymSessionModel =
        GymSessionModel.fromJson(request.toJson());

    String userAccountModelDocumentReferenceId = request.userAccountId!;
    DocumentReference<UserAccountModel> userAccountModelDocumentReference =
        await this
            .usersStoreService
            .userAccountModelRepo
            .getDocumentReference(userAccountModelDocumentReferenceId);

    gymSessionModel = gymSessionModel.copyWith(
        userAccountModelDocumentReference: userAccountModelDocumentReference);

    logger.d(gymSessionModel.toJson());

    DocumentReference<GymSessionModel> gymSessionModelReference =
        await sessionStoreService.saveGymSessionModel(gymSessionModel);
    DocumentSnapshot<GymSessionModel> gymSessionDocumentSnapshot =
        await gymSessionModelReference.get();

    GymSession gymSession =
        GymSession.fromJson(gymSessionDocumentSnapshot.data()!.toJson());
    gymSession = gymSession.copyWith(id: gymSessionDocumentSnapshot.id);

    return CreateGymSessionResponse(gymSession: gymSession);
  }

  Future<CreateGymSessionExerciseResponse> createGymSessionExercise(
      CreateGymSessionExerciseRequest request) async {
    GymSessionExerciseModel gymSessionExerciseModel =
        GymSessionExerciseModel.fromJson(request.toJson());

    DocumentReference<ExerciseModel> exerciseModelDocumentReference =
        await exerciseStoreService
            .getExerciseModelDocumentReference(request.exerciseId!);

    DocumentReference<GymSessionModel> gymSessionModelDocumentReference =
        await sessionStoreService
            .getGymSessionModelDocumentReference(request.gymSessionId!);

    gymSessionExerciseModel = gymSessionExerciseModel.copyWith(
        exerciseModelDocumentReference: exerciseModelDocumentReference,
        gymSessionModelDocumentReference: gymSessionModelDocumentReference);

    DocumentReference<GymSessionExerciseModel>
        gymSessionExerciseModelReference = await sessionStoreService
            .saveGymSessionExerciseModel(gymSessionExerciseModel);
    DocumentSnapshot<GymSessionExerciseModel>
        gymSessionExerciseModelDocumentSnapshot =
        await gymSessionExerciseModelReference.get();

    GymSessionExercise gymSessionExercise = GymSessionExercise.fromJson(
        gymSessionExerciseModelDocumentSnapshot.data()!.toJson());
    gymSessionExercise = gymSessionExercise.copyWith(
        id: gymSessionExerciseModelDocumentSnapshot.id);
    logger.d("${gymSessionExercise.id} and ${gymSessionExerciseModel.id}");

    return CreateGymSessionExerciseResponse(
        gymSessionExercise: gymSessionExercise);
  }

  Future<CreateGymSessionExerciseSetResponse> createGymSessionExerciseSet(
      CreateGymSessionExerciseSetRequest request) async {
    GymSessionExerciseSetModel gymSessionExerciseSetModel =
        GymSessionExerciseSetModel.fromJson(request.toJson());
    DocumentReference<GymSessionExerciseSetModel>
        gymSessionExerciseSetModelReference = await sessionStoreService
            .saveGymSessionExerciseSetModel(gymSessionExerciseSetModel);
    DocumentSnapshot<GymSessionExerciseSetModel>
        gymSessionExerciseSetDocumentSnapshot =
        await gymSessionExerciseSetModelReference.get();

    GymSessionExerciseSet gymSessionExerciseSet =
        GymSessionExerciseSet.fromJson(
            gymSessionExerciseSetDocumentSnapshot.data()!.toJson());
    gymSessionExerciseSet = gymSessionExerciseSet.copyWith(
        id: gymSessionExerciseSetDocumentSnapshot.id);

    return CreateGymSessionExerciseSetResponse(
        gymSessionExerciseSet: gymSessionExerciseSet);
  }

  Future<GetAllGymSessionsByUserAccountResponse> getAllGymSessionsByUserAccount(
      GetAllGymSessionsByUserAccountRequest request) async {
    QuerySnapshot<GymSessionModel> gymSessionModelQuerySnapshot =
        await sessionStoreService.getAllGymSessionsByUserAccountModels();
    List<GymSession> gymSessions = gymSessionModelQuerySnapshot.docs.map((e) {
      GymSessionModel gymSessionModel = e.data();
      GymSession gymSession = GymSession.fromJson(e.data().toJson());
      gymSession = gymSession.copyWith(
          id: e.id,
          userAccountId: gymSessionModel.userAccountModelDocumentReference?.id);
      return gymSession;
    }).toList();
    return GetAllGymSessionsByUserAccountResponse(
        size: gymSessionModelQuerySnapshot.size, gymSessions: gymSessions);
  }

  Future<GetGymSessionResponse> getGymSession(
      GetGymSessionRequest request) async {
    DocumentReference<GymSessionModel> gymSessionExerciseDocumentReference =
        await sessionStoreService
            .getGymSessionModelDocumentReference(request.id!);
    DocumentSnapshot<GymSessionModel> gymSessionExerciseDocumentSnapshot =
        await gymSessionExerciseDocumentReference.get();
    if (gymSessionExerciseDocumentSnapshot.exists) {
      GymSession gymSession = GymSession.fromJson(
          gymSessionExerciseDocumentSnapshot.data()!.toJson());
      gymSession =
          gymSession.copyWith(id: gymSessionExerciseDocumentSnapshot.id);
      return Future.value(GetGymSessionResponse(gymSession: gymSession));
    } else {
      return Future.error(NotFoundException(
          message: 'exercise with id ${request.id} doesnt exist'));
    }
  }

  Future<GetAllGymSessionExercisesResponse> getAllGymSessionExercises(
      GetAllGymSessionExercisesRequest request) async {
    QuerySnapshot<GymSessionExerciseModel>
        gymSessionExerciseModelQuerySnapshot =
        await sessionStoreService.getAllGymSessionExerciseModels();
    List<GymSessionExercise> gymSessionExercises =
        gymSessionExerciseModelQuerySnapshot.docs.map((e) {
      GymSessionExerciseModel gymSessionExerciseModel = e.data();

      GymSessionExercise gymSessionExercise =
          GymSessionExercise.fromJson(e.data().toJson());
      gymSessionExercise = gymSessionExercise.copyWith(
          id: e.id,
          exerciseId:
              gymSessionExerciseModel.exerciseModelDocumentReference?.id,
          gymSessionId:
              gymSessionExerciseModel.gymSessionModelDocumentReference?.id);

      logger.d(gymSessionExercise.toJson());

      return gymSessionExercise;
    }).toList();
    return GetAllGymSessionExercisesResponse(
        size: gymSessionExerciseModelQuerySnapshot.size,
        gymSessionExercises: gymSessionExercises);
  }

  Future<GetGymSessionExerciseResponse> getGymSessionExercise(
      GetGymSessionExerciseRequest request) async {
    DocumentReference<GymSessionExerciseModel>
        gymSessionExerciseModelDocumentReference = await sessionStoreService
            .getGymSessionExerciseModelDocumentReference(request.id.toString());
    DocumentSnapshot<GymSessionExerciseModel>
        gymSessionExerciseModelDocumentSnapshot =
        await gymSessionExerciseModelDocumentReference.get();
    if (gymSessionExerciseModelDocumentSnapshot.exists) {
      GymSessionExercise gymSessionExercise = GymSessionExercise.fromJson(
          gymSessionExerciseModelDocumentSnapshot.data()!.toJson());
      gymSessionExercise = gymSessionExercise.copyWith(
          id: gymSessionExerciseModelDocumentSnapshot.id);
      return Future.value(GetGymSessionExerciseResponse(
          gymSessionExercise: gymSessionExercise));
    } else {
      return Future.error(NotFoundException(
          message: 'exercise with id ${request.id} doesnt exist'));
    }
  }


  Future<GetAllGymSessionExerciseSetsResponse> getAllGymSessionExerciseSets(
      GetAllGymSessionExerciseSetsRequest request) async {
    QuerySnapshot<GymSessionExerciseSetModel>
    gymSessionExerciseSetModelQuerySnapshot =
    await sessionStoreService.getAllGymSessionExerciseSetModels();
    List<GymSessionExerciseSet> gymSessionExerciseSets =
    gymSessionExerciseSetModelQuerySnapshot.docs.map((e) {
      GymSessionExerciseSetModel gymSessionExerciseSetModel = e.data();

      GymSessionExerciseSet gymSessionExerciseSet =
      GymSessionExerciseSet.fromJson(e.data().toJson());
      gymSessionExerciseSet = gymSessionExerciseSet.copyWith(
          id: e.id,
          exerciseId:
          gymSessionExerciseSetModel.exerciseModelDocumentReference?.id,
          gymSessionExerciseId:
          gymSessionExerciseSetModel.gymSessionExerciseModelDocumentReference?.id);
      return gymSessionExerciseSet;
    }).toList();
    return GetAllGymSessionExerciseSetsResponse(
        size: gymSessionExerciseSetModelQuerySnapshot.size,
        gymSessionExerciseSet: gymSessionExerciseSets);
  }

  Future<GetGymSessionExerciseSetResponse> getGymSessionExerciseSet(
      GetGymSessionExerciseSetRequest request) async {
    DocumentReference<GymSessionExerciseSetModel>
        gymSessionExerciseSetModelDocumentReference = await sessionStoreService
            .getGymSessionExerciseSetModelDocumentReference(request.id!);
    DocumentSnapshot<GymSessionExerciseSetModel>
        gymSessionExerciseSetModelDocumentSnapshot =
        await gymSessionExerciseSetModelDocumentReference.get();
    if (gymSessionExerciseSetModelDocumentSnapshot.exists) {
      GymSessionExerciseSet gymSessionExerciseSet =
          GymSessionExerciseSet.fromJson(
              gymSessionExerciseSetModelDocumentSnapshot.data()!.toJson());
      gymSessionExerciseSet = gymSessionExerciseSet.copyWith(
          id: gymSessionExerciseSetModelDocumentSnapshot.id);
      return Future.value(GetGymSessionExerciseSetResponse(
          gymSessionExerciseSet: gymSessionExerciseSet));
    } else {
      return Future.error(NotFoundException(
          message: 'exercise with id ${request.id} doesnt exist'));
    }
  }

  Future<GetGymSessionModelsByUserAccountModelResponse>
      getGymSessionByUserAccount(
          GetGymSessionModelsByUserAccountModelRequest request) async {
    DocumentReference<UserAccountModel> userAccountModelDocumentSnapshot =
        await usersStoreService.getUserAccountModelDocumentReference(
            request.userAccountId.toString());

    DocumentSnapshot<GymSessionModel>? lastDocumentSnapshot;

    if (request.lastDocumentId != null) {
      lastDocumentSnapshot = await sessionStoreService
          .getGymSessionModelDocumentSnapshot(request.lastDocumentId!);
    }

    QuerySnapshot<GymSessionModel> workoutTemplateWorkoutSetModelQuerySnapshot =
        await sessionStoreService.getGymSessionModelsByUserAccountModel(
            userAccountModelDocumentSnapshot,
            lastDocumentSnapshot: lastDocumentSnapshot,
            descending: request.descending,
            fieldName: request.fieldName,
            count: request.count);

    List<GymSession> gymSession =
        workoutTemplateWorkoutSetModelQuerySnapshot.docs.map((e) {
      GymSession gymSession = GymSession.fromJson(e.data().toJson());
      gymSession = gymSession.copyWith(id: e.id);
      return gymSession;
    }).toList();
    return GetGymSessionModelsByUserAccountModelResponse(
        size: workoutTemplateWorkoutSetModelQuerySnapshot.size,
        gymSession: gymSession);
  }

  Future<GetGymSessionExerciseModelsByExerciseModelResponse>
      getGymSessionExerciseByExercise(
          GetGymSessionExerciseModelsByExerciseModelRequest request) async {
    DocumentReference<ExerciseModel> exerciseModelDocumentReference =
        await exerciseStoreService
            .getExerciseModelDocumentReference(request.gymSessionId!);

    DocumentSnapshot<GymSessionExerciseModel>? lastDocumentSnapshot;

    if (request.lastDocumentId != null) {
      lastDocumentSnapshot = await sessionStoreService
          .getGymSessionExerciseModelDocumentSnapshot(request.lastDocumentId!);
    }

    QuerySnapshot<GymSessionExerciseModel>
        workoutTemplateWorkoutSetModelQuerySnapshot =
        await sessionStoreService.getGymSessionExerciseModelsByExerciseModel(
            exerciseModelDocumentReference,
            lastDocumentSnapshot: lastDocumentSnapshot,
            descending: request.descending,
            fieldName: request.fieldName,
            count: request.count);

    List<GymSessionExercise> gymSessionExercise =
        workoutTemplateWorkoutSetModelQuerySnapshot.docs.map((e) {
      GymSessionExercise gymSessionExercise =
          GymSessionExercise.fromJson(e.data().toJson());
      gymSessionExercise = gymSessionExercise.copyWith(id: e.id);
      return gymSessionExercise;
    }).toList();
    return GetGymSessionExerciseModelsByExerciseModelResponse(
        size: workoutTemplateWorkoutSetModelQuerySnapshot.size,
        gymSessionExercise: gymSessionExercise);
  }

  Future<GetGymSessionExerciseSetModelsByGymSessionExerciseModelResponse>
      getGymSessionExerciseSetByGymSessionExercise(
          GetGymSessionExerciseSetModelsByGymSessionExerciseModelRequest
              request) async {
    DocumentReference<GymSessionExerciseModel>
        gymSessionExerciseModelDocumentReference = await sessionStoreService
            .getGymSessionExerciseModelDocumentReference(request.gymSessionExerciseId!);

    DocumentSnapshot<GymSessionExerciseSetModel>? lastDocumentSnapshot;

    if (request.lastDocumentId != null) {
      lastDocumentSnapshot = await sessionStoreService
          .getGymSessionExerciseSetModelDocumentSnapshot(
              request.lastDocumentId!);
    }

    QuerySnapshot<GymSessionExerciseSetModel>
        gymSessionExerciseSetModelQuerySnapshot = await sessionStoreService
            .getGymSessionExerciseSetModelsByGymSessionExerciseModel(
                gymSessionExerciseModelDocumentReference,
                lastDocumentSnapshot: lastDocumentSnapshot,
                descending: request.descending,
                fieldName: request.fieldName,
                count: request.count);

    List<GymSessionExerciseSet> gymSessionExerciseSet =
        gymSessionExerciseSetModelQuerySnapshot.docs.map((e) {
          GymSessionExerciseSetModel gymSessionExerciseSetModel = e.data();
      GymSessionExerciseSet gymSessionExerciseSet =
          GymSessionExerciseSet.fromJson(e.data().toJson());
      gymSessionExerciseSet = gymSessionExerciseSet.copyWith(
          id: e.id,
        exerciseId: gymSessionExerciseSetModel.exerciseModelDocumentReference?.id,
        gymSessionExerciseId: gymSessionExerciseSetModel.gymSessionExerciseModelDocumentReference?.id
      );
      return gymSessionExerciseSet;
    }).toList();
    return GetGymSessionExerciseSetModelsByGymSessionExerciseModelResponse(
        size: gymSessionExerciseSetModelQuerySnapshot.size,
        gymSessionExerciseSet: gymSessionExerciseSet);
  }
}
