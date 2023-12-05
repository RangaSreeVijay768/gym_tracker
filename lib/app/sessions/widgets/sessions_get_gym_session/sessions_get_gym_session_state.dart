part of 'sessions_get_gym_session_cubit.dart';

@freezed
class SessionsGetGymSessionState with _$SessionsGetGymSessionState {
  const factory SessionsGetGymSessionState.initial({
    GetGymSessionResponse? getGymSessionResponse,
    @Default(BooleanStatus.initial) BooleanStatus getGymSessionStatus,
  }) = _Initial;
}
