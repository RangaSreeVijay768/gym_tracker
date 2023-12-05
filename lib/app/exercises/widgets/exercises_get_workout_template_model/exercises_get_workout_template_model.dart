import 'package:avatars/avatars.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '/app/themes/borders.dart';
import '/app/themes/edge_insets.dart';
import 'exercises_get_workout_template_model_controller.dart';
import 'exercises_get_workout_template_model_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class ExercisesGetWorkoutTemplateModel
    extends BaseStatelessWidget<
        ExercisesGetWorkoutTemplateModelController,
        ExercisesGetWorkoutTemplateModelCubit,
        ExercisesGetWorkoutTemplateModelState> {

  ExercisesGetWorkoutTemplateModel(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExercisesGetWorkoutTemplateModelCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          ExercisesGetWorkoutTemplateModelCubit,
          ExercisesGetWorkoutTemplateModelState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return state.getWorkoutTemplateModelResponse != null
          ? ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: state.getWorkoutTemplateModelResponse!.workoutTemplates!.length,
              itemBuilder: (context, index) {
                final workoutTemplate =
                state.getWorkoutTemplateModelResponse!.workoutTemplates![index];
                return Container(
                  padding: edge_insets_x_8_y_4,
                  child: InkWell(
                    onTap: () {},
                    child: ListTile(
                      leading: Avatar(
                        name: workoutTemplate.workouts![index].exercise.toString(),
                        shape: AvatarShape.circle(25),
                      ),
                      title: Text(workoutTemplate.workouts![index].exercise.toString()),
                      subtitle:
                      Text(workoutTemplate.workouts![index].exercise.toString()),
                    ),
                  ),
                );
              })
          : Center(
            child: Text("No templates"),
          );
        },
      ),
    );
  }

  @override
  ExercisesGetWorkoutTemplateModelCubit createCubitAndAssignToController(
      BuildContext context) {
    ExercisesGetWorkoutTemplateModelCubit cubit = ExercisesGetWorkoutTemplateModelCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
