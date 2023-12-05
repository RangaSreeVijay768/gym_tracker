import 'package:beebloom_gym_tracker/app/core/logger/log.dart';
import 'package:beebloom_gym_tracker/app/exercises/services/exercise_utils.dart';
import 'package:beebloom_gym_tracker/app/exercises/services/models/create_workout_template_model/create_workout_template_model_response.dart';
import 'package:beebloom_gym_tracker/app/themes/app_colors.dart';
import 'package:beebloom_gym_tracker/app/themes/borders.dart';
import 'package:beebloom_gym_tracker/app/themes/edge_insets.dart';
import 'package:beebloom_gym_tracker/app/themes/shadows.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/app/core/widgets/base_stateless_widget.dart';
import 'exercises_create_workout_template_model_controller.dart';
import 'exercises_create_workout_template_model_cubit.dart';

class ExercisesCreateWorkoutTemplateModel extends BaseStatelessWidget<
    ExercisesCreateWorkoutTemplateModelController,
    ExercisesCreateWorkoutTemplateModelCubit,
    ExercisesCreateWorkoutTemplateModelState> {
  ExercisesCreateWorkoutTemplateModel(
      {Key? key, super.controller, super.onStateChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExercisesCreateWorkoutTemplateModelCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<ExercisesCreateWorkoutTemplateModelCubit,
          ExercisesCreateWorkoutTemplateModelState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Container(
            decoration: BoxDecoration(
              boxShadow: [shadows.bs_grey]
            ),
            child: Row(
              children: [
                Expanded(
                    child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: AppColors.white,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: AppColors.textRed,
                                  width: 1
                              ),
                              borderRadius: borderRadius.br_5
                          ),
                          padding: edge_insets_y_12,
                        ),
                        onPressed: () async {
                          CreateWorkoutTemplateModelResponse
                          createWorkoutTemplateModelResponse = await getCubit(context)
                              .createWorkoutTemplateModel(getCubit(context)
                              .createRequestData(
                              bodyParts: ['hands', 'arms'],
                              userAccountId:
                              ExerciseUtils.getRandomUserAccountId(),
                              types: ['barbell'],
                              createWorkoutTemplateWorkoutModelItems: [
                                ExerciseUtils
                                    .getRandomCreateWorkoutTemplateWorkoutModelItem(),
                                ExerciseUtils
                                    .getRandomCreateWorkoutTemplateWorkoutModelItem()
                              ]));
                          logger.d(createWorkoutTemplateModelResponse.toJson());
                        },
                        child: const Text('Create random template', style: TextStyle(
                            color: AppColors.textRed
                        ),))
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  ExercisesCreateWorkoutTemplateModelCubit createCubitAndAssignToController(
      BuildContext context) {
    ExercisesCreateWorkoutTemplateModelCubit cubit =
        ExercisesCreateWorkoutTemplateModelCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
