part of 'sessions_create_gym_session_cubit.dart';

@freezed
class SessionsCreateGymSessionState with _$SessionsCreateGymSessionState {
  const factory SessionsCreateGymSessionState.initial({
    CreateGymSessionResponse? createGymSessionResponse,
    @Default(BooleanStatus.initial) BooleanStatus createGymSessionStatus,
    DateTime? startTime,
    DateTime? endTime,
    required UserAccount userAccount
  }) = _Initial;
}
