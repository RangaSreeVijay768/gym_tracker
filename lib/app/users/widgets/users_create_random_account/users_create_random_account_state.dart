part of 'users_create_random_account_cubit.dart';

@freezed
class UsersCreateRandomAccountState with _$UsersCreateRandomAccountState {
  const factory UsersCreateRandomAccountState.initial({
    String? accountName,
    CreateUserAccountResponse? createUserAccountResponse,
    @Default(BooleanStatus.initial) BooleanStatus createUserAccountStatus,
  }) = _Initial;
}
