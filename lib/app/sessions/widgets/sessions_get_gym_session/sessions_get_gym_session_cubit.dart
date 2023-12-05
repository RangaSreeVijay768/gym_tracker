import 'package:beebloom_gym_tracker/app/sessions/services/models/get_gym_session/get_gym_session_request.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/get_gym_session/get_gym_session_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../services/session_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'sessions_get_gym_session_state.dart';

part 'sessions_get_gym_session_cubit.freezed.dart';

class SessionsGetGymSessionCubit extends BaseCubit<SessionsGetGymSessionState> {
  late SessionService sessionService;

  SessionsGetGymSessionCubit({required super.context})
      : super(initialState: const SessionsGetGymSessionState.initial()) {
    sessionService = GetIt.instance<SessionService>();
    getGymSession(createRequestData());
  }

  GetGymSessionRequest createRequestData({String? id}) {
    final request = GetGymSessionRequest(
      id: id
    );
    return request;
  }

  Future<GetGymSessionResponse> getGymSession(
      GetGymSessionRequest request) async {
    return sessionService.getGymSession(request).then((value) {
      emit(state.copyWith(
          getGymSessionResponse: value,
          getGymSessionStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(getGymSessionStatus: BooleanStatus.error));
      throw error;
    });
  }
}
