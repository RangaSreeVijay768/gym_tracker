import 'package:beebloom_gym_tracker/app/core/logger/log.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/sign_in_anonymously/sign_in_anonymously_request.dart';
import 'package:beebloom_gym_tracker/app/users/services/users_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '/app/core/blocs/base_cubit.dart';
import '/app/core/database/boolean_status.dart';

part 'users_sign_in_annonymously_cubit.freezed.dart';

part 'users_sign_in_annonymously_state.dart';

class UsersSignInAnnonymouslyCubit
    extends BaseCubit<UsersSignInAnnonymouslyState> {
  late UsersService usersService;

  UsersSignInAnnonymouslyCubit({required super.context})
      : super(initialState: UsersSignInAnnonymouslyState.initial()) {
    usersService = GetIt.instance<UsersService>();
  }

  SignInAnonymouslyRequest createRequestData() {
    final request = SignInAnonymouslyRequest();
    return request;
  }

  Future<UserCredential?> signInAnonymously(
      SignInAnonymouslyRequest request) async {
    return usersService.signInAnonymously(request).then((value) {

      emit(state.copyWith(
          signInAnonymouslyResponse: value,
          signInAnonymouslyStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(signInAnonymouslyStatus: BooleanStatus.error));

      throw error;
    });
  }
}
