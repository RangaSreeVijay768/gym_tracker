import 'package:beebloom_gym_tracker/app/core/models/users/user_account.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/get_all_gym_sessions_by_user_account/get_all_gym_sessions_by_user_account_request.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/get_all_gym_sessions_by_user_account/get_all_gym_sessions_by_user_account_response.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../services/session_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'sessions_get_all_gym_sessions_by_user_account_state.dart';

part 'sessions_get_all_gym_sessions_by_user_account_cubit.freezed.dart';

class SessionsGetAllGymSessionsByUserAccountCubit
    extends BaseCubit<SessionsGetAllGymSessionsByUserAccountState> {
  late SessionService sessionService;
  SessionsGetAllGymSessionsByUserAccountCubit({required super.context, required UserAccount userAccount}) : super(
      initialState: SessionsGetAllGymSessionsByUserAccountState.initial(userAccount: userAccount)){
    sessionService = GetIt.instance<SessionService>();
    getAllGymSessionsByUserAccount(createRequestData());
  }

  GetAllGymSessionsByUserAccountRequest createRequestData() {
        final request = GetAllGymSessionsByUserAccountRequest(
          userAccountId: state.userAccount.accountId
        );
        return request;
      }

    Future<GetAllGymSessionsByUserAccountResponse> getAllGymSessionsByUserAccount(
        GetAllGymSessionsByUserAccountRequest request) async {
        return sessionService.getAllGymSessionsByUserAccount(request).then((value) {
          emit(state.copyWith(
              getAllGymSessionsByUserAccountResponse: value,
              getAllGymSessionsByUserAccountStatus: BooleanStatus.success));
          return Future.value(value);
        }).catchError((error) {
          emit(state.copyWith(getAllGymSessionsByUserAccountStatus: BooleanStatus.error));
          throw error;
        });
      }
}
