import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../exercises/widgets/exercises_create_workout_template_model/exercises_create_workout_template_model.dart';
import '../../../exercises/widgets/exercises_get_all_workout_templates/exercises_get_all_workout_templates.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/fonts.dart';
import '/app/themes/borders.dart';
import '/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import 'tracker_workout_tab_bar_widget_controller.dart';
import 'tracker_workout_tab_bar_widget_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackerWorkoutTabBarWidget
    extends BaseStatelessWidget<
        TrackerWorkoutTabBarWidgetController,
        TrackerWorkoutTabBarWidgetCubit,
        TrackerWorkoutTabBarWidgetState> {

  TrackerWorkoutTabBarWidget({Key? key, super.controller, super.onStateChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerWorkoutTabBarWidgetCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          TrackerWorkoutTabBarWidgetCubit,
          TrackerWorkoutTabBarWidgetState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Container(
            child: DefaultTabController(
              length: 2,
              child: Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(53),
                  child: AppBar(
                    automaticallyImplyLeading: false,
                    title: TabBar(
                      indicatorPadding: edge_insets_y_8,
                      indicator: BoxDecoration(
                          color: AppColors.lightRed,
                          borderRadius: borderRadius.br_5
                      ),
                      isScrollable: true,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorWeight: 3,
                      labelColor: AppColors.textRed,
                      unselectedLabelColor: AppColors.grey1,
                      tabAlignment: TabAlignment.start,
                      padding: edge_insets_0,
                      tabs: <Widget>[
                        Container(
                            height: 50,
                            alignment: Alignment.center,
                            child: const Text(
                              "My templates",
                              style: TextStyle(
                                  fontWeight: Fonts.f500,
                                  // color: AppColors.textRed,
                                  fontSize: Fonts.fontSize14),
                            )),
                        Container(
                            height: 50,
                            alignment: Alignment.center,
                            child: const Text(
                              "Pre-built templates",
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
                      Container(
                        child: Column(
                          children: [
                            SizedBox(height: 12,),
                            ExercisesCreateWorkoutTemplateModel(),
                            ExercisesGetAllWorkoutTemplates(),
                          ],
                        ),
                      ),
                      ExercisesGetAllWorkoutTemplates(),
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
  TrackerWorkoutTabBarWidgetCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerWorkoutTabBarWidgetCubit cubit = TrackerWorkoutTabBarWidgetCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
