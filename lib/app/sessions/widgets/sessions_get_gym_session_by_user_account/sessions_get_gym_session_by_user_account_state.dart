part of 'sessions_get_gym_session_by_user_account_cubit.dart';

@freezed
class SessionsGetGymSessionByUserAccountState
    with _$SessionsGetGymSessionByUserAccountState {
  const factory SessionsGetGymSessionByUserAccountState.initial({
    required UserAccount userAccount,
    GetGymSessionModelsByUserAccountModelResponse? getGymSessionModelsByUserAccountModelResponse,
    @Default(BooleanStatus.initial) BooleanStatus getGymSessionModelsByUserAccountModelStatus,
  }) = _Initial;
}
