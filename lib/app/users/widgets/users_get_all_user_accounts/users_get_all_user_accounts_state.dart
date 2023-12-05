part of 'users_get_all_user_accounts_cubit.dart';

@freezed
class UsersGetAllUserAccountsState with _$UsersGetAllUserAccountsState {
  const factory UsersGetAllUserAccountsState.initial({
    int? first,
    int? count,
    @Default("createdTime") String? columnName,
    @Default("DESC") String? columnOrder,
    GetAllUserAccountsResponse? getAllUserAccountsResponse,
    @Default(BooleanStatus.initial) BooleanStatus getAllUserAccountsStatus,
  }) = _Initial;
}
