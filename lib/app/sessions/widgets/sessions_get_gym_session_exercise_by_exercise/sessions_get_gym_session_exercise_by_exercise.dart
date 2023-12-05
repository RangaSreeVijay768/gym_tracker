import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '/app/themes/borders.dart';
import '/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import 'sessions_get_gym_session_exercise_by_exercise_controller.dart';
import 'sessions_get_gym_session_exercise_by_exercise_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class SessionsGetGymSessionExerciseByExercise
    extends BaseStatelessWidget<
        SessionsGetGymSessionExerciseByExerciseController,
        SessionsGetGymSessionExerciseByExerciseCubit,
        SessionsGetGymSessionExerciseByExerciseState> {

  SessionsGetGymSessionExerciseByExercise(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SessionsGetGymSessionExerciseByExerciseCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          SessionsGetGymSessionExerciseByExerciseCubit,
          SessionsGetGymSessionExerciseByExerciseState>(
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
  SessionsGetGymSessionExerciseByExerciseCubit createCubitAndAssignToController(
      BuildContext context) {
    SessionsGetGymSessionExerciseByExerciseCubit cubit = SessionsGetGymSessionExerciseByExerciseCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
