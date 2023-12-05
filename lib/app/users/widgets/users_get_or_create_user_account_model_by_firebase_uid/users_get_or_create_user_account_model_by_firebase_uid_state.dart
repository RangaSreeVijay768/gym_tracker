part of 'users_get_or_create_user_account_model_by_firebase_uid_cubit.dart';

@freezed
class UsersGetOrCreateUserAccountModelByFirebaseUidState
    with _$UsersGetOrCreateUserAccountModelByFirebaseUidState {
  const factory UsersGetOrCreateUserAccountModelByFirebaseUidState.initial({
    String? firebaseUid,
    GetOrCreateUserAccountModelByFirebaseUidResponse?
        getOrCreateUserAccountModelByFirebaseUidResponse,
    @Default(BooleanStatus.initial)
    BooleanStatus getOrCreateUserAccountModelByFirebaseUidStatus,
  }) = _Initial;
}
