import 'package:beebloom_gym_tracker/app/cloud_firestore/app/users/models/user_account_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/users/services/users_store_service.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/workout_sessions/models/workout_session.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/workout_sessions/services/workout_store_service.dart';
import 'package:beebloom_gym_tracker/app/firebase_auth/services/firebase_auth_service.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/create_user_account/create_user_account_request.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/create_user_account/create_user_account_response.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/create_workout_reminder/create_workout_reminder_request.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/create_workout_reminder/create_workout_reminder_response.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/create_workout_session/create_workout_session_request.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/get_all_user_account_models/get_all_user_account_models_request.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/get_all_user_accounts/get_all_user_accounts_request.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/get_all_user_accounts/get_all_user_accounts_response.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/get_or_create_user_account_model_by_firebase_uid/get_or_create_user_account_model_by_firebase_uid_request.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/get_or_create_user_account_model_by_firebase_uid/get_or_create_user_account_model_by_firebase_uid_response.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/get_user_accounts_with_reminders_between/get_user_accounts_with_reminders_between_request.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/sign_in_anonymously/sign_in_anonymously_request.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/sign_out/sign_out_request.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/users_set_network_state/users_set_network_state_request.dart';
import 'package:beebloom_gym_tracker/app/users/services/users_fire_store_client.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@singleton
class UsersService {
  late UsersStoreService usersStoreService;
  late FirebaseAuthService firebaseAuthService;
  late WorkoutStoreService workoutStoreService;
  late UsersFireStoreClient usersFireStoreClient;

  UsersService(this.usersStoreService, this.firebaseAuthService,
      this.workoutStoreService, this.usersFireStoreClient);

  Future<void> setNetworkState(
      UsersSetNetworkStateRequest usersSetNetworkStateRequest) {
    return usersStoreService
        .setNetworkState(usersSetNetworkStateRequest.enabled ?? true);
  }

  Future<QuerySnapshot<UserAccountModel>> getAllUserAccountModels(
      GetAllUserAccountModelsRequest getAllUserAccountModelsRequest) {
    return usersStoreService.getAllUserAccounts();
  }

  Future<UserCredential> signInAnonymously(SignInAnonymouslyRequest request) {
    return firebaseAuthService.signInAnonymously();
  }

  Future<void> signOut(SignOutRequest signOutRequest) {
    return firebaseAuthService.signOut();
  }

  Future<DocumentReference<WorkoutSession>> createWorkoutSession(
      CreateWorkoutSessionRequest request) {
    return workoutStoreService.createWorkoutSession(request);
  }

  Future<QuerySnapshot<UserAccountModel>> getUserAccountsWithRemindersBetween(
      GetUserAccountsWithRemindersBetweenRequest request) {
    return usersStoreService.getUserAccountsWithRemindersBetween(
        request.startTime!, request.endTime!);
  }

  Future<GetAllUserAccountsResponse> getAllUserAccounts(
      GetAllUserAccountsRequest request) {
    return usersFireStoreClient.getAllUserAccounts(request);
  }

  Future<CreateUserAccountResponse> createUserAccount(
      CreateUserAccountRequest request) {
    return usersFireStoreClient.createUserAccount(request);
  }

  Future<CreateWorkoutReminderResponse> createWorkoutReminder(
      CreateWorkoutReminderRequest request) {
    return usersFireStoreClient.createWorkoutReminder(request);
  }

  Future<GetOrCreateUserAccountModelByFirebaseUidResponse>
      getOrCreateUserAccountModelByFirebaseUid(
          GetOrCreateUserAccountModelByFirebaseUidRequest request) async {
    return usersFireStoreClient
        .getOrCreateUserAccountModelByFirebaseUid(request);
  }
}
