part of 'users_sign_out_cubit.dart';

@freezed
class UsersSignOutState with _$UsersSignOutState {
  const factory UsersSignOutState.initial({
    SignOutResponse? signOutResponse,
    @Default(BooleanStatus.initial) BooleanStatus signOutStatus,
  }) = _Initial;
}
