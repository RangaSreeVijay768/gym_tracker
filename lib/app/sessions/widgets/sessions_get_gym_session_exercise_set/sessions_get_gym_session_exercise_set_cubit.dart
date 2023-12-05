import 'package:beebloom_gym_tracker/app/sessions/services/models/get_gym_session_exercise_set/get_gym_session_exercise_set_request.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/get_gym_session_exercise_set/get_gym_session_exercise_set_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../services/session_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'sessions_get_gym_session_exercise_set_state.dart';

part 'sessions_get_gym_session_exercise_set_cubit.freezed.dart';

class SessionsGetGymSessionExerciseSetCubit
    extends BaseCubit<SessionsGetGymSessionExerciseSetState> {
  late SessionService sessionService;
  SessionsGetGymSessionExerciseSetCubit({required super.context})
      : super(initialState: const SessionsGetGymSessionExerciseSetState.initial()){
    sessionService = GetIt.instance<SessionService>();
    getGymSession(createRequestData());
  }


  GetGymSessionExerciseSetRequest createRequestData({String? id}) {
    final request = GetGymSessionExerciseSetRequest(
      id: id
    );
    return request;
  }

  Future<GetGymSessionExerciseSetResponse> getGymSession(
      GetGymSessionExerciseSetRequest request) async {
    return sessionService.getGymSessionExerciseSet(request).then((value) {
      emit(state.copyWith(
          getGymSessionExerciseSetResponse: value,
          getGymSessionExerciseSetStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(getGymSessionExerciseSetStatus: BooleanStatus.error));
      throw error;
    });
  }

}
