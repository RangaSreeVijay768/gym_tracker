import 'package:beebloom_gym_tracker/app/entities/exercises/exercise.dart';
import 'package:beebloom_gym_tracker/app/entities/sessions/gym_session.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/app/core/widgets/base_stateless_widget.dart';
import '../../../core/utils/app_date_time_utils.dart';
import 'sessions_create_gym_session_exercise_controller.dart';
import 'sessions_create_gym_session_exercise_cubit.dart';

class SessionsCreateGymSessionExercise extends BaseStatelessWidget<
    SessionsCreateGymSessionExerciseController,
    SessionsCreateGymSessionExerciseCubit,
    SessionsCreateGymSessionExerciseState> {
  Exercise? exercise;
  GymSession? gymSession;

  SessionsCreateGymSessionExercise(
      {Key? key,
      super.controller,
      super.onStateChanged,
      this.exercise,
      this.gymSession})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SessionsCreateGymSessionExerciseCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<SessionsCreateGymSessionExerciseCubit,
          SessionsCreateGymSessionExerciseState>(
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
  SessionsCreateGymSessionExerciseCubit createCubitAndAssignToController(
      BuildContext context) {
    SessionsCreateGymSessionExerciseCubit cubit =
        SessionsCreateGymSessionExerciseCubit(
            context: context,
            exercise: exercise
            );
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
