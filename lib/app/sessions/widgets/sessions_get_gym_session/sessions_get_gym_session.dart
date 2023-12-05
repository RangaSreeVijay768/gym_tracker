import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'sessions_get_gym_session_controller.dart';
import 'sessions_get_gym_session_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class SessionsGetGymSession
    extends BaseStatelessWidget<SessionsGetGymSessionController,
        SessionsGetGymSessionCubit,
        SessionsGetGymSessionState> {

  const SessionsGetGymSession({super.key, super.controller, super.onStateChanged});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SessionsGetGymSessionCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<SessionsGetGymSessionCubit,
          SessionsGetGymSessionState>(
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
  SessionsGetGymSessionCubit createCubitAndAssignToController(
      BuildContext context) {
    SessionsGetGymSessionCubit cubit = SessionsGetGymSessionCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
