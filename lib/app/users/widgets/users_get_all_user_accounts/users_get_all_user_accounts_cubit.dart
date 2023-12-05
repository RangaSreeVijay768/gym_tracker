import 'package:beebloom_gym_tracker/app/cloud_firestore/app/users/models/user_account_model.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/get_all_user_account_models/get_all_user_account_models_request.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/get_all_user_accounts/get_all_user_accounts_request.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/get_all_user_accounts/get_all_user_accounts_response.dart';
import 'package:beebloom_gym_tracker/app/users/services/users_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '/app/core/blocs/base_cubit.dart';
import '/app/core/database/boolean_status.dart';

part 'users_get_all_user_accounts_cubit.freezed.dart';
part 'users_get_all_user_accounts_state.dart';

class UsersGetAllUserAccountsCubit
    extends BaseCubit<UsersGetAllUserAccountsState> {
  late UsersService usersService;

  UsersGetAllUserAccountsCubit({required super.context})
      : super(initialState: UsersGetAllUserAccountsState.initial()) {
    usersService = GetIt.instance<UsersService>();
    getAllUserAccounts(createRequestData());
  }



    GetAllUserAccountsRequest createRequestData() {
        final request = GetAllUserAccountsRequest();
        return request;
      }

    Future<GetAllUserAccountsResponse> getAllUserAccounts(
          GetAllUserAccountsRequest request) async {
        return usersService.getAllUserAccounts(request).then((value) {
          emit(state.copyWith(
              getAllUserAccountsResponse: value,
              getAllUserAccountsStatus: BooleanStatus.success));
          return Future.value(value);
        }).catchError((error) {
          emit(state.copyWith(getAllUserAccountsStatus: BooleanStatus.error));
          throw error;
        });
      }
}
