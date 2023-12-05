import 'package:beebloom_gym_tracker/app/cloud_firestore/app/users/models/user_account_model.dart';
import 'package:beebloom_gym_tracker/app/core/database/boolean_status.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/app/core/widgets/base_stateless_widget.dart';
import 'users_create_workout_session_controller.dart';
import 'users_create_workout_session_cubit.dart';

class UsersCreateWorkoutSession extends BaseStatelessWidget<
    UsersCreateWorkoutSessionController,
    UsersCreateWorkoutSessionCubit,
    UsersCreateWorkoutSessionState> {
  DocumentReference<UserAccountModel> userAccountModel;

  UsersCreateWorkoutSession(
      {required this.userAccountModel,
      super.key,
      super.controller,
      super.onStateChanged});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UsersCreateWorkoutSessionCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<UsersCreateWorkoutSessionCubit,
          UsersCreateWorkoutSessionState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return ElevatedButton(
              onPressed:
                  state.createWorkoutSessionStatus == BooleanStatus.pending
                      ? null
                      : () {
                          getCubit(context).createWorkoutSession(
                              getCubit(context).createRequestData(
                                  userAccountModel: userAccountModel));
                        },
              child: Text('create workout session'));
        },
      ),
    );
  }

  @override
  UsersCreateWorkoutSessionCubit createCubitAndAssignToController(
      BuildContext context) {
    UsersCreateWorkoutSessionCubit cubit =
        UsersCreateWorkoutSessionCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
