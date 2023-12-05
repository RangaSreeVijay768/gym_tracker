import 'package:beebloom_gym_tracker/app/cloud_firestore/app/users/models/user_account_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/workout_sessions/models/workout_session.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/workout_sessions/services/workout_store_service.dart';
import 'package:beebloom_gym_tracker/app/core/utils/app_date_time_utils.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/create_workout_session/create_workout_session_request.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/create_workout_session/create_workout_session_response.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '/app/core/blocs/base_cubit.dart';
import '/app/core/database/boolean_status.dart';

part 'users_create_workout_session_cubit.freezed.dart';
part 'users_create_workout_session_state.dart';

class UsersCreateWorkoutSessionCubit
    extends BaseCubit<UsersCreateWorkoutSessionState> {
  late WorkoutStoreService workoutStoreService;

  UsersCreateWorkoutSessionCubit({required super.context})
      : super(initialState: UsersCreateWorkoutSessionState.initial()) {
    workoutStoreService = GetIt.instance<WorkoutStoreService>();
  }

  CreateWorkoutSessionRequest createRequestData(
      {required DocumentReference<UserAccountModel> userAccountModel}) {
    final request = CreateWorkoutSessionRequest(
        userAccountModel: userAccountModel,
        startTime: AppDateTimeUtils.getCurrentTimeOfDay(),
        endTime:
            AppDateTimeUtils.getCurrentTimeOfDay().add(Duration(hours: 1)));
    return request;
  }

  Future<DocumentReference<WorkoutSession>> createWorkoutSession(
      CreateWorkoutSessionRequest request) async {
    return workoutStoreService.createWorkoutSession(request).then((value) {
      emit(state.copyWith(
          createWorkoutSessionResponse: value,
          createWorkoutSessionStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(createWorkoutSessionStatus: BooleanStatus.error));
      throw error;
    });
  }
}
