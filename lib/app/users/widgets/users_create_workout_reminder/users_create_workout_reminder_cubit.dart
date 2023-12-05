import 'package:beebloom_gym_tracker/app/users/services/models/create_workout_reminder/create_workout_reminder_request.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/create_workout_reminder/create_workout_reminder_response.dart';
import 'package:beebloom_gym_tracker/app/users/services/users_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '/app/core/blocs/base_cubit.dart';
import '/app/core/database/boolean_status.dart';

part 'users_create_workout_reminder_cubit.freezed.dart';
part 'users_create_workout_reminder_state.dart';

class UsersCreateWorkoutReminderCubit
    extends BaseCubit<UsersCreateWorkoutReminderState> {
  late UsersService usersService;

  UsersCreateWorkoutReminderCubit({required super.context})
      : super(initialState: UsersCreateWorkoutReminderState.initial()) {
    usersService = GetIt.instance<UsersService>();
  }

  CreateWorkoutReminderRequest createRequestData(
      {String? userAccountId, num? randomNumber, DateTime? reminderTime}) {
    final request = CreateWorkoutReminderRequest(
        userAccountId: userAccountId ?? state.userAccountId,
        reminderTime: reminderTime ?? state.reminderTime);
    return request;
  }

  Future<CreateWorkoutReminderResponse> createWorkoutReminder(
      CreateWorkoutReminderRequest request) async {
    return usersService.createWorkoutReminder(request).then((value) {
      emit(state.copyWith(
          createWorkoutReminderResponse: value,
          createWorkoutReminderStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(createWorkoutReminderStatus: BooleanStatus.error));
      throw error;
    });
  }
}
