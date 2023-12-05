import 'package:beebloom_gym_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_gym_tracker/app/entities/sessions/gym_session.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../entities/sessions/gym_session_exercise.dart';
import '/app/core/widgets/base_stateless_widget.dart';
import '../../../core/utils/app_date_time_utils.dart';
import 'sessions_create_gym_session_exercise_set_controller.dart';
import 'sessions_create_gym_session_exercise_set_cubit.dart';

class SessionsCreateGymSessionExerciseSet extends BaseStatelessWidget<
    SessionsCreateGymSessionExerciseSetController,
    SessionsCreateGymSessionExerciseSetCubit,
    SessionsCreateGymSessionExerciseSetState> {
  // Exercise exercise;
  GymSessionExercise? gymSessionExercise;
  DateTime startTime = AppDateTimeUtils.getCurrentTimeOfDay();
  DateTime endTime = AppDateTimeUtils.getEndTimeOfDateTime(
      AppDateTimeUtils.getCurrentTimeOfDay());

  SessionsCreateGymSessionExerciseSet(
      {Key? key,
        this.gymSessionExercise,
      super.controller,
      super.onStateChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SessionsCreateGymSessionExerciseSetCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<SessionsCreateGymSessionExerciseSetCubit,
          SessionsCreateGymSessionExerciseSetState>(
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
  SessionsCreateGymSessionExerciseSetCubit createCubitAndAssignToController(
      BuildContext context) {
    SessionsCreateGymSessionExerciseSetCubit cubit =
        SessionsCreateGymSessionExerciseSetCubit(
            context: context, endTime: endTime, startTime: startTime);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
