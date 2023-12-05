import 'package:beebloom_gym_tracker/app/core/logger/log.dart';
import 'package:beebloom_gym_tracker/app/core/models/users/user_account.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/create_gym_session/create_gym_session_request.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/create_gym_session/create_gym_session_response.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../services/session_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'sessions_create_gym_session_state.dart';

part 'sessions_create_gym_session_cubit.freezed.dart';

class SessionsCreateGymSessionCubit
    extends BaseCubit<SessionsCreateGymSessionState> {
  late SessionService sessionService;

  SessionsCreateGymSessionCubit(
      {required super.context,
      DateTime? startTime,
      DateTime? endTime,
      required UserAccount userAccount})
      : super(
            initialState: SessionsCreateGymSessionState.initial(
                startTime: startTime,
                endTime: endTime,
                userAccount: userAccount)) {
    sessionService = GetIt.instance<SessionService>();
  }

  CreateGymSessionRequest createRequestData(
      {DateTime? startTime, DateTime? endTime}) {
    final request = CreateGymSessionRequest(
        startTime: startTime ?? state.startTime,
        endTime: endTime ?? state.endTime,
        // bodyParts: ,
        // types: ,
        userAccountId: state.userAccount.id);
    return request;
  }

  Future<CreateGymSessionResponse> createGymSession(
      CreateGymSessionRequest request) async {
    logger.d(request.toJson());
    return sessionService.createGymSession(request).then((value) {
      emit(state.copyWith(
          createGymSessionResponse: value,
          createGymSessionStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(createGymSessionStatus: BooleanStatus.error));
      throw error;
    });
  }
}
