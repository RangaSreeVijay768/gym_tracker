import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'exercises_get_exercise_controller.dart';
import 'exercises_get_exercise_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class ExercisesGetExercise
    extends BaseStatelessWidget<
        ExercisesGetExerciseController,
        ExercisesGetExerciseCubit,
        ExercisesGetExerciseState> {

  ExercisesGetExercise({Key? key, super.controller, super.onStateChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExercisesGetExerciseCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<ExercisesGetExerciseCubit, ExercisesGetExerciseState>(
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
  ExercisesGetExerciseCubit createCubitAndAssignToController(
      BuildContext context) {
    ExercisesGetExerciseCubit cubit = ExercisesGetExerciseCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
