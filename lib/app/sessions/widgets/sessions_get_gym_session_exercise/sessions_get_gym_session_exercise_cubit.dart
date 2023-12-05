import 'package:beebloom_gym_tracker/app/entities/exercises/exercise.dart';
import 'package:beebloom_gym_tracker/app/entities/sessions/gym_session_exercise.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/get_gym_session_exercise/get_gym_session_exercise_request.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/get_gym_session_exercise/get_gym_session_exercise_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../services/session_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'sessions_get_gym_session_exercise_state.dart';

part 'sessions_get_gym_session_exercise_cubit.freezed.dart';

class SessionsGetGymSessionExerciseCubit
    extends BaseCubit<SessionsGetGymSessionExerciseState> {
  late SessionService sessionService;
  SessionsGetGymSessionExerciseCubit({required super.context, required Exercise exercise})
      : super(initialState: SessionsGetGymSessionExerciseState.initial(exercise: exercise)){
    sessionService = GetIt.instance<SessionService>();
    getGymSession(createRequestData());
  }

  GetGymSessionExerciseRequest createRequestData() {
    final request = GetGymSessionExerciseRequest(
      id: state.exercise?.exerciseId
    );
    return request;
  }

  Future<GetGymSessionExerciseResponse> getGymSession(
      GetGymSessionExerciseRequest request) async {
    return sessionService.getGymSessionExercise(request).then((value) {
      emit(state.copyWith(
          getGymSessionExerciseResponse: value,
          getGymSessionExerciseStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(getGymSessionExerciseStatus: BooleanStatus.error));
      throw error;
    });
  }

}
