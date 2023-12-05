import 'dart:math';

import 'package:beebloom_gym_tracker/app/core/logger/log.dart';
import 'package:beebloom_gym_tracker/app/core/models/users/user_account.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/create_workout_reminder/create_workout_reminder_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/app/core/widgets/base_stateless_widget.dart';
import 'users_create_workout_reminder_controller.dart';
import 'users_create_workout_reminder_cubit.dart';

class UsersCreateWorkoutReminder extends BaseStatelessWidget<
    UsersCreateWorkoutReminderController,
    UsersCreateWorkoutReminderCubit,
    UsersCreateWorkoutReminderState> {
  UserAccount userAccount;

  UsersCreateWorkoutReminder(
      {required this.userAccount,
      Key? key,
      super.controller,
      super.onStateChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UsersCreateWorkoutReminderCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<UsersCreateWorkoutReminderCubit,
          UsersCreateWorkoutReminderState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return ElevatedButton(
              onPressed: () async {
                CreateWorkoutReminderResponse createWorkoutReminderResponse =
                    await getCubit(context).createWorkoutReminder(
                        getCubit(context).createRequestData(
                            userAccountId: this.userAccount.id,
                            randomNumber: Random().nextInt(100),
                            reminderTime: DateTime.now()));
                logger.d(
                    "Id: ${createWorkoutReminderResponse.workoutReminder!.id!}");
              },
              child: Text('Add reminder'));
        },
      ),
    );
  }

  @override
  UsersCreateWorkoutReminderCubit createCubitAndAssignToController(
      BuildContext context) {
    UsersCreateWorkoutReminderCubit cubit =
        UsersCreateWorkoutReminderCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
