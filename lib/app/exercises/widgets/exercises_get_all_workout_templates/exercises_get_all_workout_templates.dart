import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/fonts.dart';
import '../../../tracker/screens/tracker_workout_template_details_screen/tracker_workout_template_details_screen.dart';
import '/app/themes/borders.dart';
import '/app/themes/edge_insets.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';

import 'exercises_get_all_workout_templates_controller.dart';
import 'exercises_get_all_workout_templates_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class ExercisesGetAllWorkoutTemplates
    extends BaseStatelessWidget<
        ExercisesGetAllWorkoutTemplatesController,
        ExercisesGetAllWorkoutTemplatesCubit,
        ExercisesGetAllWorkoutTemplatesState> {

  ExercisesGetAllWorkoutTemplates(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExercisesGetAllWorkoutTemplatesCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          ExercisesGetAllWorkoutTemplatesCubit,
          ExercisesGetAllWorkoutTemplatesState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return state.getAllWorkoutTemplatesResponse?.workoutTemplates != null
          ? Expanded(
              child: GridView.builder(
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.6,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16),
              physics: AlwaysScrollableScrollPhysics(),
              // shrinkWrap: true,
              itemCount: state.getAllWorkoutTemplatesResponse!.workoutTemplates!.length,
              itemBuilder: (context, index){
                final workoutTemplate = state.getAllWorkoutTemplatesResponse!.workoutTemplates![index];
                return Container(
                  margin: edge_insets_t_16,
                  decoration: BoxDecoration(
                      borderRadius: borderRadius.br_10,
                      border: borders.b_1px_grey2),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  TrackerWorkoutTemplateDetailsScreen()));
                    },
                    child: Container(
                      padding: edge_insets_16,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            workoutTemplate.workoutId.toString(),
                            style: TextStyle(
                                fontWeight: Fonts.f600,
                                fontSize: Fonts.fontSize16),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "3 x Squat(Barbell)",
                            style: TextStyle(
                                fontSize: Fonts.fontSize14,
                                color: AppColors.grey1),
                          ),
                          Text(
                            "3 x Leg(Extension)",
                            style: TextStyle(
                                fontSize: Fonts.fontSize14,
                                color: AppColors.grey1),
                          ),
                          Text(
                            "3 x Flat Leg Raise",
                            style: TextStyle(
                                fontSize: Fonts.fontSize14,
                                color: AppColors.grey1),
                          ),
                          Text(
                            "3 x Standing Calf Raise",
                            style: TextStyle(
                                fontSize: Fonts.fontSize14,
                                color: AppColors.grey1),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }
          ))
          : SizedBox();
        },
      ),
    );
  }

  @override
  ExercisesGetAllWorkoutTemplatesCubit createCubitAndAssignToController(
      BuildContext context) {
    ExercisesGetAllWorkoutTemplatesCubit cubit = ExercisesGetAllWorkoutTemplatesCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
