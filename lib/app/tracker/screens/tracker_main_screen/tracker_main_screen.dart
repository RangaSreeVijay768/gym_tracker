import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/edge_insets.dart';
import '../../../themes/shadows.dart';
import '../tracker_exercises_screen/tracker_exercises_screen.dart';
import '../tracker_history_screen/tracker_history_screen.dart';
import '../tracker_measure_screen/tracker_measure_screen.dart';
import '../tracker_profile_screen/tracker_profile_screen.dart';
import '../tracker_workout_screen/tracker_workout_screen.dart';
import 'tracker_main_screen_controller.dart';
import 'tracker_main_screen_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackerMainScreen
    extends BaseStatelessWidget<
        TrackerMainScreenController,
        TrackerMainScreenCubit,
        TrackerMainScreenState> {

  TrackerMainScreen({Key? key, super.controller, super.onStateChanged})
      : super(key: key){
    tabWidgets = {
      'PROFILE': TrackerProfileScreen(),
      'HISTORY': TrackerHistoryScreen(),
      'EXERCISES': TrackerExercisesScreen(),
      'WORKOUT': TrackerWorkoutScreen(),
      'MEASURE': TrackerMeasureScreen()
    };
  }
  late final Map<String, Widget> tabWidgets;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerMainScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerMainScreenCubit, TrackerMainScreenState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Scaffold(
            body: tabWidgets[state.selectedWidgetName],
            bottomNavigationBar: Container(
              decoration: const BoxDecoration(
                  color: AppColors.white, boxShadow: [shadows.bs_primary]),
              alignment: Alignment.center,
              height: 70,
              padding: edge_insets_x_16,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        splashColor: AppColors.orange,
                        onTap: () {
                          getCubit(context).selectWidget('PROFILE');
                        },
                        child: Container(
                          alignment: Alignment.center,
                          // width: MediaQuery.of(context).size.width / 5.5,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 15,
                              ),
                              Icon(
                                Icons.person,
                                color: state.selectedWidgetName == 'PROFILE'
                                    ? AppColors.bgPrimary
                                    : AppColors.grey4,
                              ),
                              Text(
                                "Profile",
                                style: TextStyle(
                                    color: state.selectedWidgetName == 'PROFILE'
                                        ? AppColors.bgPrimary
                                        : AppColors.grey4),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: AppColors.orange,
                        onTap: () {
                          getCubit(context).selectWidget('HISTORY');
                        },
                        child: Container(
                          alignment: Alignment.center,
                          // width: MediaQuery.of(context).size.width / 5.5,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 15,
                              ),
                              Icon(
                                Icons.history,
                                color: state.selectedWidgetName == 'HISTORY'
                                    ? AppColors.bgPrimary
                                    : AppColors.grey4,
                              ),
                              Text(
                                "History",
                                style: TextStyle(
                                    color: state.selectedWidgetName == 'HISTORY'
                                        ? AppColors.bgPrimary
                                        : AppColors.grey4),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: AppColors.orange,
                        onTap: () {
                          getCubit(context).selectWidget("WORKOUT");
                        },
                        child: Container(
                          alignment: Alignment.center,
                          // width: MediaQuery.of(context).size.width / 5.5,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 15,
                              ),
                              Icon(
                                Icons.add,
                                color: state.selectedWidgetName == 'WORKOUT'
                                    ? AppColors.bgPrimary
                                    : AppColors.grey4,
                              ),
                              Text(
                                "Workout",
                                style: TextStyle(
                                    color: state.selectedWidgetName == 'WORKOUT'
                                        ? AppColors.bgPrimary
                                        : AppColors.grey4),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: AppColors.orange,
                        onTap: () {
                          getCubit(context).selectWidget("EXERCISES");
                        },
                        child: Container(
                          alignment: Alignment.center,
                          // width: MediaQuery.of(context).size.width / 5.5,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 15,
                              ),
                              Icon(
                                Icons.fitness_center,
                                color: state.selectedWidgetName == 'EXERCISES'
                                    ? AppColors.bgPrimary
                                    : AppColors.grey4,
                              ),
                              Text(
                                "Exercises",
                                style: TextStyle(
                                    color: state.selectedWidgetName == 'EXERCISES'
                                        ? AppColors.bgPrimary
                                        : AppColors.grey4),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: AppColors.orange,
                        onTap: () {
                          getCubit(context).selectWidget("MEASURE");
                        },
                        child: Container(
                          alignment: Alignment.center,
                          // width: MediaQuery.of(context).size.width / 5.5,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 15,
                              ),
                              Icon(
                                Icons.insights,
                                color: state.selectedWidgetName == 'MEASURE'
                                    ? AppColors.bgPrimary
                                    : AppColors.grey4,
                              ),
                              Text(
                                "Measure",
                                style: TextStyle(
                                    color: state.selectedWidgetName == 'MEASURE'
                                        ? AppColors.bgPrimary
                                        : AppColors.grey4),
                              )
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 6,),
                  // AdsBannerAdWidget(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  TrackerMainScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerMainScreenCubit cubit = TrackerMainScreenCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
