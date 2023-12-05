import 'package:beebloom_gym_tracker/app/themes/fonts.dart';
import 'package:beebloom_gym_tracker/app/tracker/screens/tracker_exercise_details_about_screen/tracker_exercise_details_about_screen.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../entities/exercises/exercise.dart';
import '../../../exercises/widgets/exercises_create_workout_template_model/exercises_create_workout_template_model.dart';
import '../../../exercises/widgets/exercises_get_all_workout_templates/exercises_get_all_workout_templates.dart';
import '../../../themes/app_colors.dart';
import '../tracker_exercise_details_history_screen/tracker_exercise_details_history_screen.dart';
import '/app/themes/borders.dart';
import '/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import 'tracker_exercise_details_screen_controller.dart';
import 'tracker_exercise_details_screen_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackerExerciseDetailsScreen
    extends BaseStatelessWidget<
        TrackerExerciseDetailsScreenController,
        TrackerExerciseDetailsScreenCubit,
        TrackerExerciseDetailsScreenState> {
  Exercise exercise;

  TrackerExerciseDetailsScreen(
      {Key? key, super.controller, super.onStateChanged, required this.exercise}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerExerciseDetailsScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          TrackerExerciseDetailsScreenCubit,
          TrackerExerciseDetailsScreenState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(10),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: (){
                        context.pop(context);
                      },
                      icon: Icon(Icons.chevron_left, size: 35,),
                    ),
                    Text(exercise.exerciseName.toString(),
                      style: TextStyle(
                          fontWeight: Fonts.f700,
                          fontSize: Fonts.fontSize18
                      ),)
                  ],
                ),
              ),
            ),
            body: DefaultTabController(
              length: 2,
              child: Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(60),
                  child: AppBar(
                    automaticallyImplyLeading: false,
                    bottom: TabBar(
                      indicatorPadding: edge_insets_y_8,
                      indicator: BoxDecoration(
                          color: AppColors.bgPrimary2,
                          borderRadius: borderRadius.br_5
                      ),
                      isScrollable: true,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorWeight: 3,
                      labelColor: AppColors.white,
                      unselectedLabelColor: AppColors.grey1,
                      tabAlignment: TabAlignment.center,
                      padding: edge_insets_0,
                      tabs: <Widget>[
                        Container(
                            padding: edge_insets_x_32_y_16,
                            alignment: Alignment.center,
                            child: const Text(
                              "About",
                              style: TextStyle(
                                  fontWeight: Fonts.f500,
                                  // color: AppColors.textRed,
                                  fontSize: Fonts.fontSize14),
                            )),
                        Container(
                            padding: edge_insets_x_32_y_16,
                            alignment: Alignment.center,
                            child: const Text(
                              "History",
                              style: TextStyle(
                                  fontWeight: Fonts.f500,
                                  fontSize: Fonts.fontSize14),
                            )),
                      ],
                    ),
                  ),
                ),
                body: Container(
                  margin: edge_insets_t_8,
                  decoration: BoxDecoration(
                      border: borders.bt_1px_grey4
                  ),
                  child: TabBarView(
                    children: [
                      TrackerExerciseDetailsAboutScreen(),
                      TrackerExerciseDetailsHistoryScreen(),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  TrackerExerciseDetailsScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerExerciseDetailsScreenCubit cubit = TrackerExerciseDetailsScreenCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
