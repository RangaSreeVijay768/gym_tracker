import 'package:beebloom_gym_tracker/app/core/models/users/user_account.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/get_gym_session_models_by_user_account_model/get_gym_session_models_by_user_account_model_request.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/get_gym_session_models_by_user_account_model/get_gym_session_models_by_user_account_model_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../services/session_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'sessions_get_gym_session_by_user_account_state.dart';

part 'sessions_get_gym_session_by_user_account_cubit.freezed.dart';

class SessionsGetGymSessionByUserAccountCubit
    extends BaseCubit<SessionsGetGymSessionByUserAccountState> {
  late SessionService sessionService;

  SessionsGetGymSessionByUserAccountCubit({required super.context, required UserAccount userAccount})
      : super(initialState: SessionsGetGymSessionByUserAccountState.initial(userAccount: userAccount)) {
    sessionService = GetIt.instance<SessionService>();
    getGymSessionByUserAccount(createRequestData());
  }

  GetGymSessionModelsByUserAccountModelRequest createRequestData(
      {String? userAccountId}) {
    final request = GetGymSessionModelsByUserAccountModelRequest(
        userAccountId: userAccountId ?? state.userAccount.accountId);
    return request;
  }

  Future<GetGymSessionModelsByUserAccountModelResponse>
      getGymSessionByUserAccount(
          GetGymSessionModelsByUserAccountModelRequest request) async {
    return sessionService.getGymSessionByUserAccount(request).then((value) {
      emit(state.copyWith(
          getGymSessionModelsByUserAccountModelResponse: value,
          getGymSessionModelsByUserAccountModelStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(
          getGymSessionModelsByUserAccountModelStatus: BooleanStatus.error));
      throw error;
    });
  }
}
