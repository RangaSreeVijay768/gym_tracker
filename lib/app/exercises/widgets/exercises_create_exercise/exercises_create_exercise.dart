import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'exercises_create_exercise_controller.dart';
import 'exercises_create_exercise_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class ExercisesCreateExercise
    extends BaseStatelessWidget<
        ExercisesCreateExerciseController,
        ExercisesCreateExerciseCubit,
        ExercisesCreateExerciseState> {

  ExercisesCreateExercise({Key? key, super.controller, super.onStateChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExercisesCreateExerciseCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          ExercisesCreateExerciseCubit,
          ExercisesCreateExerciseState>(
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
  ExercisesCreateExerciseCubit createCubitAndAssignToController(
      BuildContext context) {
    ExercisesCreateExerciseCubit cubit = ExercisesCreateExerciseCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
