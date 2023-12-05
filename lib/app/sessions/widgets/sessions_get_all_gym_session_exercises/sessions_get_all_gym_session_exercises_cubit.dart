import 'package:beebloom_gym_tracker/app/sessions/services/models/get_all_gym_session_exercises/get_all_gym_session_exercises_request.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/get_all_gym_session_exercises/get_all_gym_session_exercises_response.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/session_service.dart';
import 'package:beebloom_gym_tracker/app/sessions/widgets/sessions_create_gym_session_exercise_set/sessions_create_gym_session_exercise_set_cubit.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../exercises/services/exercise_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'sessions_get_all_gym_session_exercises_state.dart';

part 'sessions_get_all_gym_session_exercises_cubit.freezed.dart';

class SessionsGetAllGymSessionExercisesCubit
    extends BaseCubit<SessionsGetAllGymSessionExercisesState> {
  late SessionService sessionService;
  late ExerciseService exerciseService;

  SessionsGetAllGymSessionExercisesCubit({required super.context})
      : super(initialState: SessionsGetAllGymSessionExercisesState.initial()) {
    sessionService = GetIt.instance<SessionService>();
    getAllGymSessionExercises(createRequestData());
  }

  GetAllGymSessionExercisesRequest createRequestData() {
    final request = GetAllGymSessionExercisesRequest();
    return request;
  }

  Future<GetAllGymSessionExercisesResponse> getAllGymSessionExercises(
      GetAllGymSessionExercisesRequest request) async {
    return sessionService.getAllGymSessionExercise(request).then((value) {
      emit(state.copyWith(
          getAllGymSessionExercisesResponse: value,
          getAllGymSessionExercisesStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(
          state.copyWith(getAllGymSessionExercisesStatus: BooleanStatus.error));
      throw error;
    });
  }





}
