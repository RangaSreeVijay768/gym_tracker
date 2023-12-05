import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '/app/themes/borders.dart';
import '/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import 'exercises_create_workout_template_workout_set_model_controller.dart';
import 'exercises_create_workout_template_workout_set_model_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class ExercisesCreateWorkoutTemplateWorkoutSetModel
    extends BaseStatelessWidget<
        ExercisesCreateWorkoutTemplateWorkoutSetModelController,
        ExercisesCreateWorkoutTemplateWorkoutSetModelCubit,
        ExercisesCreateWorkoutTemplateWorkoutSetModelState> {

  ExercisesCreateWorkoutTemplateWorkoutSetModel(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExercisesCreateWorkoutTemplateWorkoutSetModelCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          ExercisesCreateWorkoutTemplateWorkoutSetModelCubit,
          ExercisesCreateWorkoutTemplateWorkoutSetModelState>(
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
  ExercisesCreateWorkoutTemplateWorkoutSetModelCubit createCubitAndAssignToController(
      BuildContext context) {
    ExercisesCreateWorkoutTemplateWorkoutSetModelCubit cubit = ExercisesCreateWorkoutTemplateWorkoutSetModelCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
