import 'package:beebloom_gym_tracker/app/users/services/models/create_user_account/create_user_account_request.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/create_user_account/create_user_account_response.dart';
import 'package:beebloom_gym_tracker/app/users/services/users_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '/app/core/blocs/base_cubit.dart';
import '/app/core/database/boolean_status.dart';

part 'users_create_random_account_cubit.freezed.dart';
part 'users_create_random_account_state.dart';

class UsersCreateRandomAccountCubit
    extends BaseCubit<UsersCreateRandomAccountState> {
  late UsersService usersService;

  UsersCreateRandomAccountCubit({required super.context})
      : super(initialState: UsersCreateRandomAccountState.initial()) {
    usersService = GetIt.instance<UsersService>();
  }

    CreateUserAccountRequest createRequestData({String? accountName}) {
        final request = CreateUserAccountRequest(
            accountName: accountName ?? state.accountName);
        return request;
      }

    Future<CreateUserAccountResponse> createUserAccount(
          CreateUserAccountRequest request) async {
        return usersService.createUserAccount(request).then((value) {
          emit(state.copyWith(
              createUserAccountResponse: value,
              createUserAccountStatus: BooleanStatus.success));
          return Future.value(value);
        }).catchError((error) {
          emit(state.copyWith(createUserAccountStatus: BooleanStatus.error));
          throw error;
        });
      }

}
