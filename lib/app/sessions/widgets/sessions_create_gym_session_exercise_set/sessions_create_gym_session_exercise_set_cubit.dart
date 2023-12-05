import 'package:beebloom_gym_tracker/app/sessions/services/models/create_gym_session_exercise_set/create_gym_session_exercise_set_request.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/create_gym_session_exercise_set/create_gym_session_exercise_set_response.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../entities/exercises/exercise.dart';
import '../../../entities/sessions/gym_session_exercise.dart';
import '../../services/session_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'sessions_create_gym_session_exercise_set_state.dart';

part 'sessions_create_gym_session_exercise_set_cubit.freezed.dart';

class SessionsCreateGymSessionExerciseSetCubit
    extends BaseCubit<SessionsCreateGymSessionExerciseSetState> {
  late SessionService sessionService;

  SessionsCreateGymSessionExerciseSetCubit({
    required super.context,
    Exercise? exercise,
    required DateTime startTime,
    required DateTime endTime})
      : super(initialState: SessionsCreateGymSessionExerciseSetState.initial(
      exercise: exercise, endTime: endTime, startTime: startTime
  )) {
    sessionService = GetIt.instance<SessionService>();
  }


  CreateGymSessionExerciseSetRequest createRequestData({
    DateTime? startTime,
    DateTime? endTime,
    String? exerciseId,
    String? gymSessionExerciseId
}) {
    final request = CreateGymSessionExerciseSetRequest(
      endTime: endTime,
      startTime: startTime,
      exerciseId: exerciseId,
      gymSessionExerciseId: gymSessionExerciseId ?? state.gymSessionExercise?.id
    );
    return request;
  }

  Future<CreateGymSessionExerciseSetResponse> createGymSessionExercise(
      CreateGymSessionExerciseSetRequest request) async {
    return sessionService.createGymSessionExerciseSet(request).then((value) {
      emit(state.copyWith(
          createGymSessionExerciseSetResponse: value,
          createGymSessionExerciseSetStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(
          createGymSessionExerciseSetStatus: BooleanStatus.error));
      throw error;
    });
  }

}
