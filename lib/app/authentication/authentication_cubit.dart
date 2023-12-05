import 'package:beebloom_gym_tracker/app/core/logger/log.dart';
import 'package:beebloom_gym_tracker/app/firebase_auth/core/firebase_auth_client.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/get_or_create_user_account_model_by_firebase_uid/get_or_create_user_account_model_by_firebase_uid_request.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/get_or_create_user_account_model_by_firebase_uid/get_or_create_user_account_model_by_firebase_uid_response.dart';
import 'package:beebloom_gym_tracker/app/users/services/users_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '/app/core/authentication/authentication_utils.dart';
import '/app/core/blocs/base_cubit.dart';
import '/app/core/database/boolean_status.dart';
import '/app/core/models/users/user_account.dart';
import '/app/core/models/users/user_auth_token.dart';

part 'authentication_cubit.freezed.dart';
part 'authentication_state.dart';

class AuthenticationCubit extends BaseCubit<AuthenticationState> {
  late FirebaseAuthClient firebaseAuthClient;
  late UsersService usersService;

  AuthenticationCubit({required super.context})
      : super(initialState: AuthenticationState.initial()) {
    firebaseAuthClient = GetIt.instance<FirebaseAuthClient>();
    usersService = GetIt.instance<UsersService>();
    this.firebaseAuthClient.firebaseAuth.userChanges().listen((user) async {

      if (user != null) {
        logger.d("firbase id ${user.uid}");
        GetOrCreateUserAccountModelByFirebaseUidResponse response =
            await usersService.getOrCreateUserAccountModelByFirebaseUid(
                GetOrCreateUserAccountModelByFirebaseUidRequest(
                    firebaseUid: user.uid));
        logger.d(response.userAccount!.toJson());
        emit(state.copyWith(
            authenticationStatus: BooleanStatus.success,
            userAccount: response.userAccount));
      } else {
        emit(state.copyWith(authenticationStatus: BooleanStatus.error));
      }
    });
  }

  Future<UserAuthToken?> getUserAuthTokenFromSharedPreferences() async {
    UserAuthToken? userAuthToken =
        await AuthenticationUtils.getUserAuthTokenFromSharedPreferences();
    if (userAuthToken != null) {
      emit(state.copyWith(
          userAccount: userAuthToken.userAccount,
          userAuthToken: userAuthToken,
          authenticationStatus: BooleanStatus.success));
    } else {
      emit(state.copyWith(authenticationStatus: BooleanStatus.error));
    }
    return Future.value(userAuthToken);
  }

  Future<bool> saveUserAuthToken(UserAuthToken userAuthToken) async {
    emit(state.copyWith(
        userAuthToken: userAuthToken,
        userAccount: userAuthToken.userAccount,
        authenticationStatus: BooleanStatus.success));
    return Future.value(true);
  }

  Future<bool> saveUserAccount(UserAccount userAccount) async {
    emitState(state.copyWith(
        authenticationStatus: BooleanStatus.success, userAccount: userAccount));
    return Future.value(true);
  }
}
