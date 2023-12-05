import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'sessions_get_gym_session_exercise_set_controller.dart';
import 'sessions_get_gym_session_exercise_set_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class SessionsGetGymSessionExerciseSet
    extends BaseStatelessWidget<
        SessionsGetGymSessionExerciseSetController,
        SessionsGetGymSessionExerciseSetCubit,
        SessionsGetGymSessionExerciseSetState> {

  const SessionsGetGymSessionExerciseSet(
      {super.key, super.controller, super.onStateChanged});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SessionsGetGymSessionExerciseSetCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          SessionsGetGymSessionExerciseSetCubit,
          SessionsGetGymSessionExerciseSetState>(
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
  SessionsGetGymSessionExerciseSetCubit createCubitAndAssignToController(
      BuildContext context) {
    SessionsGetGymSessionExerciseSetCubit cubit = SessionsGetGymSessionExerciseSetCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
