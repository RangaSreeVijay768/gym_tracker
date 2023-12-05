part of 'users_set_network_state_cubit.dart';

@freezed
class UsersSetNetworkStateState with _$UsersSetNetworkStateState {
  const factory UsersSetNetworkStateState.initial({
    bool? usersSetNetworkStateResponse,
    @Default(BooleanStatus.initial) BooleanStatus usersSetNetworkStateStatus,
  }) = _Initial;
}

