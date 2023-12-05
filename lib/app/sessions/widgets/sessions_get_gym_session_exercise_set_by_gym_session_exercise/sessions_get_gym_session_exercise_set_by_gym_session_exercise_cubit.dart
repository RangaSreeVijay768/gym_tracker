import 'package:beebloom_gym_tracker/app/entities/sessions/gym_session_exercise.dart';
import 'package:beebloom_gym_tracker/app/entities/sessions/gym_session_exercise_set.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/get_gym_session_exercise_set_models_by_gym_session_exercise_model/get_gym_session_exercise_set_models_by_gym_session_exercise_model_request.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/get_gym_session_exercise_set_models_by_gym_session_exercise_model/get_gym_session_exercise_set_models_by_gym_session_exercise_model_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../services/session_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'sessions_get_gym_session_exercise_set_by_gym_session_exercise_state.dart';

part 'sessions_get_gym_session_exercise_set_by_gym_session_exercise_cubit.freezed.dart';

class SessionsGetGymSessionExerciseSetByGymSessionExerciseCubit
    extends BaseCubit<
        SessionsGetGymSessionExerciseSetByGymSessionExerciseState> {
  late SessionService sessionService;

  SessionsGetGymSessionExerciseSetByGymSessionExerciseCubit(
      {required super.context, required GymSessionExercise gymSessionExercise})
      : super(
            initialState:
                SessionsGetGymSessionExerciseSetByGymSessionExerciseState
                    .initial(gymSessionExercise: gymSessionExercise)) {
    sessionService = GetIt.instance<SessionService>();
    getGymSessionExerciseSetByGymSessionExercise(createRequestData());
  }

  GetGymSessionExerciseSetModelsByGymSessionExerciseModelRequest
      createRequestData() {
    final request =
        GetGymSessionExerciseSetModelsByGymSessionExerciseModelRequest(
            gymSessionExerciseId: state.gymSessionExercise?.id);
    return request;
  }

  Future<GetGymSessionExerciseSetModelsByGymSessionExerciseModelResponse>
      getGymSessionExerciseSetByGymSessionExercise(
          GetGymSessionExerciseSetModelsByGymSessionExerciseModelRequest
              request) async {
    return sessionService
        .getGymSessionExerciseSetByGymSessionExercise(request)
        .then((value) {
      emit(state.copyWith(
          getGymSessionExerciseSetModelsByGymSessionExerciseModelResponse:
              value,
          getGymSessionExerciseSetModelsByGymSessionExerciseModelStatus:
              BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(
          getGymSessionExerciseSetModelsByGymSessionExerciseModelStatus:
              BooleanStatus.error));
      throw error;
    });
  }
}
