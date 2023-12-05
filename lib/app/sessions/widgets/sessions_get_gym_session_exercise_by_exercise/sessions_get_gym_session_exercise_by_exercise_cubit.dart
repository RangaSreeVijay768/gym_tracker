import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../services/models/get_gym_session_exercise_models_by_exercise_model/get_gym_session_exercise_models_by_exercise_model_request.dart';
import '../../services/models/get_gym_session_exercise_models_by_exercise_model/get_gym_session_exercise_models_by_exercise_model_response.dart';
import '../../services/session_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'sessions_get_gym_session_exercise_by_exercise_state.dart';

part 'sessions_get_gym_session_exercise_by_exercise_cubit.freezed.dart';

class SessionsGetGymSessionExerciseByExerciseCubit
    extends BaseCubit<SessionsGetGymSessionExerciseByExerciseState> {
  late SessionService sessionService;

  SessionsGetGymSessionExerciseByExerciseCubit({required super.context})
      : super(
            initialState:
                SessionsGetGymSessionExerciseByExerciseState.initial()) {
    sessionService = GetIt.instance<SessionService>();
    getGymSessionExerciseByExercise(createRequestData());
  }

  GetGymSessionExerciseModelsByExerciseModelRequest createRequestData(
      {String? gymSessionId}) {
    final request = GetGymSessionExerciseModelsByExerciseModelRequest(
        gymSessionId: gymSessionId);
    return request;
  }

  Future<GetGymSessionExerciseModelsByExerciseModelResponse>
      getGymSessionExerciseByExercise(
          GetGymSessionExerciseModelsByExerciseModelRequest request) async {
    return sessionService
        .getGymSessionExerciseByExercise(request)
        .then((value) {
      emit(state.copyWith(
          getGymSessionExerciseModelsByExerciseModelResponse: value,
          getGymSessionExerciseModelsByExerciseModelStatus:
              BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(
          getGymSessionExerciseModelsByExerciseModelStatus:
              BooleanStatus.error));
      throw error;
    });
  }
}
