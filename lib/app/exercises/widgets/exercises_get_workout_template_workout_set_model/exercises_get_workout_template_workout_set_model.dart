import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '/app/themes/borders.dart';
import '/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import 'exercises_get_workout_template_workout_set_model_controller.dart';
import 'exercises_get_workout_template_workout_set_model_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class ExercisesGetWorkoutTemplateWorkoutSetModel
    extends BaseStatelessWidget<
        ExercisesGetWorkoutTemplateWorkoutSetModelController,
        ExercisesGetWorkoutTemplateWorkoutSetModelCubit,
        ExercisesGetWorkoutTemplateWorkoutSetModelState> {

  ExercisesGetWorkoutTemplateWorkoutSetModel(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExercisesGetWorkoutTemplateWorkoutSetModelCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          ExercisesGetWorkoutTemplateWorkoutSetModelCubit,
          ExercisesGetWorkoutTemplateWorkoutSetModelState>(
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
  ExercisesGetWorkoutTemplateWorkoutSetModelCubit createCubitAndAssignToController(
      BuildContext context) {
    ExercisesGetWorkoutTemplateWorkoutSetModelCubit cubit = ExercisesGetWorkoutTemplateWorkoutSetModelCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
