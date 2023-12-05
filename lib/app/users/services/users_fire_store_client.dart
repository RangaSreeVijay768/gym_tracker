import 'package:beebloom_gym_tracker/app/cloud_firestore/app/users/models/user_account_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/users/models/workout_reminder_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/users/services/users_store_service.dart';
import 'package:beebloom_gym_tracker/app/core/logger/log.dart';
import 'package:beebloom_gym_tracker/app/core/models/users/user_account.dart';
import 'package:beebloom_gym_tracker/app/entities/exceptions/not_found_exception.dart';
import 'package:beebloom_gym_tracker/app/entities/users/workout_reminder.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/create_user_account/create_user_account_request.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/create_user_account/create_user_account_response.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/create_workout_reminder/create_workout_reminder_request.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/create_workout_reminder/create_workout_reminder_response.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/get_all_user_accounts/get_all_user_accounts_request.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/get_all_user_accounts/get_all_user_accounts_response.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/get_or_create_user_account_model_by_firebase_uid/get_or_create_user_account_model_by_firebase_uid_request.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/get_or_create_user_account_model_by_firebase_uid/get_or_create_user_account_model_by_firebase_uid_response.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/get_user_account_models_by_firebase_uid/get_user_account_models_by_firebase_uid_request.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/get_user_account_models_by_firebase_uid/get_user_account_models_by_firebase_uid_response.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/get_workout_reminders_by_user_account/get_workout_reminders_by_user_account_request.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/get_workout_reminders_by_user_account/get_workout_reminders_by_user_account_response.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@singleton
class UsersFireStoreClient {
  UsersStoreService usersStoreService;

  UsersFireStoreClient(this.usersStoreService);

  Future<GetAllUserAccountsResponse> getAllUserAccounts(
      GetAllUserAccountsRequest request) async {
    QuerySnapshot<UserAccountModel> userAccountModelQuerySnapshot =
        await usersStoreService.getAllUserAccounts();
    List<UserAccount> userAccounts =
        userAccountModelQuerySnapshot.docs.map((e) {
      UserAccount userAccount = UserAccount.fromJson(e.data().toJson());
      userAccount = userAccount.copyWith(id: e.id);
      logger.d(e.id);
      logger.d(userAccount.toJson());

      return userAccount;
    }).toList();
    return GetAllUserAccountsResponse(
        userAccountModelQuerySnapshot.size, userAccounts);
  }

  Future<CreateUserAccountResponse> createUserAccount(
      CreateUserAccountRequest request) async {
    DocumentReference<UserAccountModel> userAccountModelDocumentReference =
        await usersStoreService.saveUserAccountModel(
            UserAccountModel(displayName: request.accountName));
    return CreateUserAccountResponse(userAccountModelDocumentReference.id);
  }

  Future<CreateWorkoutReminderResponse> createWorkoutReminder(
      CreateWorkoutReminderRequest request) async {
    WorkoutReminderModel workoutReminderModel =
        WorkoutReminderModel.fromJson(request.toJson());
    workoutReminderModel = workoutReminderModel.copyWith(
        userAccountReference: await usersStoreService.userAccountModelRepo
            .getDocumentReference(request.userAccountId!));

    DocumentReference<WorkoutReminderModel> workoutReminderModelReference =
        await usersStoreService.saveWorkoutReminderModel(workoutReminderModel);
    DocumentSnapshot<WorkoutReminderModel>
        workoutReminderModelDocumentSnapshot = await usersStoreService
            .getWorkoutReminderModelDocumentSnapshot(workoutReminderModel.id!);

    WorkoutReminder workoutReminder = WorkoutReminder.fromJson(
        workoutReminderModelDocumentSnapshot.data()!.toJson());
    workoutReminder = workoutReminder.copyWith(id: workoutReminder.id);

    return CreateWorkoutReminderResponse(workoutReminder: workoutReminder);
  }



  Future<GetWorkoutRemindersByUserAccountResponse>
      getWorkoutRemindersByUserAccount(
          GetWorkoutRemindersByUserAccountRequest request) async {
    DocumentReference<UserAccountModel> userAccountModelDocumentSnapshot =
        await usersStoreService
            .getUserAccountModelDocumentReference(request.userAccountId!);

    DocumentSnapshot<WorkoutReminderModel>? lastDocumentSnapshot;

    if (request.lastDocumentId != null) {
      lastDocumentSnapshot = await usersStoreService
          .getWorkoutReminderModelDocumentSnapshot(request.lastDocumentId!);
    }

    QuerySnapshot<WorkoutReminderModel> workoutReminderModelQuerySnapshot =
        await usersStoreService.getAllWorkoutReminderModelsByUserAccountModel(
            userAccountModelDocumentSnapshot,
            lastDocumentSnapshot: lastDocumentSnapshot,
            descending: request.descending,
            fieldName: request.fieldName,
            count: request.count);

    List<WorkoutReminder> workoutReminders =
        workoutReminderModelQuerySnapshot.docs.map((e) {
      WorkoutReminder workoutReminder =
          WorkoutReminder.fromJson(e.data().toJson());
      workoutReminder = workoutReminder.copyWith(id: e.id);
      return workoutReminder;
    }).toList();
    return GetWorkoutRemindersByUserAccountResponse(
        size: workoutReminderModelQuerySnapshot.size,
        workoutReminders: workoutReminders);
  }

  Future<GetUserAccountModelsByFirebaseUidResponse>
      getUserAccountModelsByFirebaseUid(
          GetUserAccountModelsByFirebaseUidRequest request) async {
    QuerySnapshot<UserAccountModel> userAccountModelQuerySnapshot =
        await usersStoreService
            .getUserAccountModelsByFirebaseUid(request.firebaseUid!);
    List<UserAccount> userAccounts =
        userAccountModelQuerySnapshot.docs.map((e) {
      UserAccount userAccount = UserAccount.fromJson(e.data().toJson());
      userAccount = userAccount.copyWith(id: e.id);
      return userAccount;
    }).toList();
    return GetUserAccountModelsByFirebaseUidResponse(
        userAccount: userAccounts.isNotEmpty ? userAccounts.first : null);
  }

  Future<GetOrCreateUserAccountModelByFirebaseUidResponse>
      getOrCreateUserAccountModelByFirebaseUid(
          GetOrCreateUserAccountModelByFirebaseUidRequest request) async {
    DocumentReference<UserAccountModel> userAccountModelDocumentReference =
        await usersStoreService
            .getOrCreateUserAccountModelByFirebaseUid(request.firebaseUid!);
    DocumentSnapshot<UserAccountModel> userAccountModelDocumentSnapshot =
        await userAccountModelDocumentReference.get();
    if (userAccountModelDocumentSnapshot.exists) {
      UserAccount userAccount = UserAccount.fromJson(
          userAccountModelDocumentSnapshot.data()!.toJson());
      userAccount =
          userAccount.copyWith(id: userAccountModelDocumentSnapshot.id);
      return Future.value(GetOrCreateUserAccountModelByFirebaseUidResponse(
          userAccount: userAccount));
    } else {
      return Future.error(NotFoundException(
          message:
              'userAccount with firebase id ${request.firebaseUid} doesnt exist'));
    }
  }
}
