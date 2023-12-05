import 'package:beebloom_gym_tracker/app/sessions/services/models/get_all_gym_session_exercise_sets/get_all_gym_session_exercise_sets_request.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/get_all_gym_session_exercise_sets/get_all_gym_session_exercise_sets_response.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../services/session_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'sessions_get_all_gym_session_exercise_sets_state.dart';

part 'sessions_get_all_gym_session_exercise_sets_cubit.freezed.dart';

class SessionsGetAllGymSessionExerciseSetsCubit
    extends BaseCubit<SessionsGetAllGymSessionExerciseSetsState> {
  late SessionService sessionService;

  SessionsGetAllGymSessionExerciseSetsCubit({required super.context})
      : super(
            initialState: SessionsGetAllGymSessionExerciseSetsState.initial()) {
    sessionService = GetIt.instance<SessionService>();
    getAllGymSessionExerciseSets(createRequestData());
  }

  GetAllGymSessionExerciseSetsRequest createRequestData() {
    final request = GetAllGymSessionExerciseSetsRequest();
    return request;
  }

  Future<GetAllGymSessionExerciseSetsResponse> getAllGymSessionExerciseSets(
      GetAllGymSessionExerciseSetsRequest request) async {
    return sessionService.getAllGymSessionExerciseSets(request).then((value) {
      emit(state.copyWith(
          getAllGymSessionExerciseSetsResponse: value,
          getAllGymSessionExerciseSetsStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(
          getAllGymSessionExerciseSetsStatus: BooleanStatus.error));
      throw error;
    });
  }
}
