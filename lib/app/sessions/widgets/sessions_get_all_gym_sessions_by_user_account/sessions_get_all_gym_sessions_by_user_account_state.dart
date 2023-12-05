part of 'sessions_get_all_gym_sessions_by_user_account_cubit.dart';

@freezed
class SessionsGetAllGymSessionsByUserAccountState
    with _$SessionsGetAllGymSessionsByUserAccountState {
  const factory SessionsGetAllGymSessionsByUserAccountState.initial({
    required UserAccount userAccount,
    GetAllGymSessionsByUserAccountResponse? getAllGymSessionsByUserAccountResponse,
    @Default(BooleanStatus.initial) BooleanStatus getAllGymSessionsByUserAccountStatus,
  }) = _Initial;
}
