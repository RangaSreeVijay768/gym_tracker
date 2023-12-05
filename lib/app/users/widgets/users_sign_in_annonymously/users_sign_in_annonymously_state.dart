part of 'users_sign_in_annonymously_cubit.dart';

@freezed
class UsersSignInAnnonymouslyState with _$UsersSignInAnnonymouslyState {
  const factory UsersSignInAnnonymouslyState.initial({
    UserCredential? signInAnonymouslyResponse,
    @Default(BooleanStatus.initial) BooleanStatus signInAnonymouslyStatus,
  }) = _Initial;
}
