import 'package:beebloom_gym_tracker/app/sessions/services/models/create_gym_session/create_gym_session_request.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/create_gym_session/create_gym_session_response.dart';
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
import 'package:beebloom_gym_tracker/app/sessions/services/models/get_gym_session_exercise_models_by_exercise_model/get_gym_session_exercise_models_by_exercise_model_request.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/get_gym_session_exercise_set/get_gym_session_exercise_set_request.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/get_gym_session_exercise_set/get_gym_session_exercise_set_response.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/get_gym_session_exercise_set_models_by_gym_session_exercise_model/get_gym_session_exercise_set_models_by_gym_session_exercise_model_request.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/get_gym_session_models_by_user_account_model/get_gym_session_models_by_user_account_model_request.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/session_fire_store_client.dart';
import 'package:injectable/injectable.dart';

import 'models/get_gym_session_exercise_models_by_exercise_model/get_gym_session_exercise_models_by_exercise_model_response.dart';
import 'models/get_gym_session_exercise_set_models_by_gym_session_exercise_model/get_gym_session_exercise_set_models_by_gym_session_exercise_model_response.dart';
import 'models/get_gym_session_models_by_user_account_model/get_gym_session_models_by_user_account_model_response.dart';

@singleton
class SessionService {
  SessionFireStoreClient sessionFireStoreClient;

  SessionService(this.sessionFireStoreClient);

  Future<GetGymSessionResponse> getGymSession(GetGymSessionRequest request) {
    return sessionFireStoreClient.getGymSession(request);
  }

  Future<GetAllGymSessionsByUserAccountResponse> getAllGymSessionsByUserAccount(
      GetAllGymSessionsByUserAccountRequest request) {
    return sessionFireStoreClient.getAllGymSessionsByUserAccount(request);
  }

  Future<GetGymSessionExerciseResponse> getGymSessionExercise(
      GetGymSessionExerciseRequest request) {
    return sessionFireStoreClient.getGymSessionExercise(request);
  }

  Future<GetAllGymSessionExercisesResponse> getAllGymSessionExercise(
      GetAllGymSessionExercisesRequest request) {
    return sessionFireStoreClient.getAllGymSessionExercises(request);
  }

  Future<GetGymSessionExerciseSetResponse> getGymSessionExerciseSet(
      GetGymSessionExerciseSetRequest request) {
    return sessionFireStoreClient.getGymSessionExerciseSet(request);
  }

  Future<GetAllGymSessionExerciseSetsResponse> getAllGymSessionExerciseSets(
      GetAllGymSessionExerciseSetsRequest request) {
    return sessionFireStoreClient.getAllGymSessionExerciseSets(request);
  }

  Future<CreateGymSessionResponse> createGymSession(CreateGymSessionRequest request) {
    return sessionFireStoreClient.createGymSession(request);
  }

  Future<CreateGymSessionExerciseResponse> createGymSessionExercise(CreateGymSessionExerciseRequest request) {
    return sessionFireStoreClient.createGymSessionExercise(request);
  }

  Future<CreateGymSessionExerciseSetResponse> createGymSessionExerciseSet(CreateGymSessionExerciseSetRequest request) {
    return sessionFireStoreClient.createGymSessionExerciseSet(request);
  }

  Future<GetGymSessionModelsByUserAccountModelResponse> getGymSessionByUserAccount(GetGymSessionModelsByUserAccountModelRequest request) {
    return sessionFireStoreClient.getGymSessionByUserAccount(request);
  }
  Future<GetGymSessionExerciseModelsByExerciseModelResponse> getGymSessionExerciseByExercise(GetGymSessionExerciseModelsByExerciseModelRequest request) {
    return sessionFireStoreClient.getGymSessionExerciseByExercise(request);
  }
  Future<GetGymSessionExerciseSetModelsByGymSessionExerciseModelResponse> getGymSessionExerciseSetByGymSessionExercise(GetGymSessionExerciseSetModelsByGymSessionExerciseModelRequest request) {
    return sessionFireStoreClient.getGymSessionExerciseSetByGymSessionExercise(request);
  }

}
