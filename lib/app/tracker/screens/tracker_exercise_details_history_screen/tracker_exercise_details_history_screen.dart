import 'package:beebloom_gym_tracker/app/themes/fonts.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../themes/app_colors.dart';
import '../tracker_history_template_details_screen/tracker_history_template_details_screen.dart';
import '/app/themes/borders.dart';
import '/app/themes/shadows.dart';
import '/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import 'tracker_exercise_details_history_screen_controller.dart';
import 'tracker_exercise_details_history_screen_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackerExerciseDetailsHistoryScreen
    extends BaseStatelessWidget<
        TrackerExerciseDetailsHistoryScreenController,
        TrackerExerciseDetailsHistoryScreenCubit,
        TrackerExerciseDetailsHistoryScreenState> {

  TrackerExerciseDetailsHistoryScreen(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerExerciseDetailsHistoryScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          TrackerExerciseDetailsHistoryScreenCubit,
          TrackerExerciseDetailsHistoryScreenState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Container(
            margin: edge_insets_y_16,
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index){
                  return Container(
                    margin: edge_insets_x_16_y_12,
                    decoration: BoxDecoration(
                        boxShadow: [shadows.bs_grey],
                        color: AppColors.white,
                        borderRadius: borderRadius.br_10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    TrackerHistoryTemplateDetailsScreen()));
                      },
                      child: Container(
                        padding: edge_insets_16,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Biceps",
                              style: TextStyle(
                                fontSize: Fonts.fontSize16,
                                fontWeight: Fonts.f700,
                              ),
                            ),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '12 October 2023',
                                  style: TextStyle(
                                      fontSize: Fonts.fontSize14,
                                      color: AppColors.grey1
                                  ),
                                ),
                                Container(
                                  margin: edge_insets_l_24,
                                  child: Text("8:30 AM", style: TextStyle(
                                      fontSize: Fonts.fontSize14,
                                      color: AppColors.grey1
                                  ),),
                                )
                              ],
                            ),
                            Container(
                              margin: edge_insets_y_16,
                              decoration: BoxDecoration(
                                  border: borders.bb_1px_grey4
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Sets performed", style: TextStyle(
                                  fontSize: Fonts.fontSize14,
                                  color: AppColors.grey1
                                ),),
                                Text("Time spent", style: TextStyle(
                                    fontSize: Fonts.fontSize14,
                                    color: AppColors.grey1
                                ),)
                              ],
                            ),
                            SizedBox(height: 16,),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "2 x   Aerobics",
                                  style: TextStyle(
                                    fontSize: Fonts.fontSize14,
                                  ),
                                ),
                                Text(
                                  "10kg x 15 reps",
                                  style: TextStyle(
                                      fontSize: Fonts.fontSize14,),
                                ),
                              ],
                            ),
                            SizedBox(height: 8,),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "2 x   Aerobics",
                                  style: TextStyle(
                                    fontSize: Fonts.fontSize14,
                                  ),
                                ),
                                Text(
                                  "10kg x 15 reps",
                                  style: TextStyle(
                                      fontSize: Fonts.fontSize14,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }
            ),
          );
        },
      ),
    );
  }

  @override
  TrackerExerciseDetailsHistoryScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerExerciseDetailsHistoryScreenCubit cubit = TrackerExerciseDetailsHistoryScreenCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
