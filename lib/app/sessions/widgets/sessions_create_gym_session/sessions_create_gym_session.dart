import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../core/models/users/user_account.dart';
import 'sessions_create_gym_session_controller.dart';
import 'sessions_create_gym_session_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class SessionsCreateGymSession extends BaseStatelessWidget<
    SessionsCreateGymSessionController,
    SessionsCreateGymSessionCubit,
    SessionsCreateGymSessionState> {
  DateTime? startTime;
  DateTime? endTime;
  UserAccount userAccount;

  SessionsCreateGymSession(
      {Key? key,
      super.controller,
      super.onStateChanged,
      required this.userAccount,
       this.endTime,
       this.startTime})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SessionsCreateGymSessionCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<SessionsCreateGymSessionCubit,
          SessionsCreateGymSessionState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Container();
        },
      ),
    );
  }

  @override
  SessionsCreateGymSessionCubit createCubitAndAssignToController(
      BuildContext context) {
    SessionsCreateGymSessionCubit cubit = SessionsCreateGymSessionCubit(
      context: context,
      startTime: startTime,
      endTime: endTime,
      userAccount: userAccount,
    );
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
