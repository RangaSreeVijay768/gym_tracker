import 'package:beebloom_gym_tracker/app/entities/exercises/exercise.dart';
import 'package:beebloom_gym_tracker/app/entities/sessions/gym_session.dart';
import 'package:beebloom_gym_tracker/app/entities/sessions/gym_session_exercise.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/create_gym_session_exercise/create_gym_session_exercise_request.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/create_gym_session_exercise/create_gym_session_exercise_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '/app/core/blocs/base_cubit.dart';
import '/app/core/database/boolean_status.dart';
import '../../services/session_service.dart';

part 'sessions_create_gym_session_exercise_cubit.freezed.dart';

part 'sessions_create_gym_session_exercise_state.dart';

class SessionsCreateGymSessionExerciseCubit
    extends BaseCubit<SessionsCreateGymSessionExerciseState> {
  late SessionService sessionService;

  SessionsCreateGymSessionExerciseCubit(
      {required super.context,
      Exercise? exercise,
      GymSession? gymSession,
      DateTime? startTime,
      DateTime? endTime})
      : super(
            initialState: SessionsCreateGymSessionExerciseState.initial(
                gymSession: gymSession,
                exercise: exercise,
                startTime: startTime,
                endTime: endTime)) {
    sessionService = GetIt.instance<SessionService>();
  }

  CreateGymSessionExerciseRequest createRequestData({
    String? gymSessionId,
    String? exerciseId,
    DateTime? startTime,
    DateTime? endTime,
  }) {
    final request = CreateGymSessionExerciseRequest(
        gymSessionId: gymSessionId ?? state.gymSession?.id,
        startTime: startTime ?? state.startTime,
        endTime: endTime ?? state.endTime,
        exerciseId: exerciseId);
    return request;
  }

  Future<CreateGymSessionExerciseResponse> createGymSessionExercise(
      CreateGymSessionExerciseRequest request) async {
    return sessionService.createGymSessionExercise(request).then((value) {
      emit(state.copyWith(
          createGymSessionExerciseResponse: value,
          createGymSessionExerciseStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(createGymSessionExerciseStatus: BooleanStatus.error));
      throw error;
    });
  }
}
