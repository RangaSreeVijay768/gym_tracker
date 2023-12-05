import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../themes/fonts.dart';
import '/app/themes/borders.dart';
import '/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import 'tracker_exercise_details_about_screen_controller.dart';
import 'tracker_exercise_details_about_screen_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackerExerciseDetailsAboutScreen
    extends BaseStatelessWidget<
        TrackerExerciseDetailsAboutScreenController,
        TrackerExerciseDetailsAboutScreenCubit,
        TrackerExerciseDetailsAboutScreenState> {

  TrackerExerciseDetailsAboutScreen(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerExerciseDetailsAboutScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          TrackerExerciseDetailsAboutScreenCubit,
          TrackerExerciseDetailsAboutScreenState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Container(
            padding: edge_insets_x_16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: edge_insets_t_20,
                  child: Image.asset("images/legs.png"),
                ),
                Container(
                  margin: edge_insets_t_20,
                  child: Text("How to do", style: TextStyle(
                      fontSize: Fonts.fontSize16,
                      fontWeight: Fonts.f700
                  ),),
                ),
                Container(
                  margin: edge_insets_t_16,
                  child: Text("1. Lorem ipsum dolor sit amet, consec", style: TextStyle(
                      fontWeight: Fonts.f500,
                      fontSize: Fonts.fontSize14
                  ),),
                ),
                Container(
                  child: Text("2. Lorem ipsum dolor sit amet, consec", style: TextStyle(
                      fontWeight: Fonts.f500,
                      fontSize: Fonts.fontSize14
                  ),),
                ),
                Container(
                  child: Text("3. Lorem ipsum dolor sit amet, consec", style: TextStyle(
                      fontWeight: Fonts.f500,
                      fontSize: Fonts.fontSize14
                  ),),
                ),
                Container(
                  child: Text("4. Lorem ipsum dolor sit amet, consec", style: TextStyle(
                      fontWeight: Fonts.f500,
                      fontSize: Fonts.fontSize14
                  ),),
                ),
                Container(
                  child: Text("5. Lorem ipsum dolor sit amet, consec", style: TextStyle(
                      fontWeight: Fonts.f500,
                      fontSize: Fonts.fontSize14
                  ),),
                ),
                Container(
                  child: Text("6. Lorem ipsum dolor sit amet, consec", style: TextStyle(
                      fontWeight: Fonts.f500,
                      fontSize: Fonts.fontSize14
                  ),),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  TrackerExerciseDetailsAboutScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerExerciseDetailsAboutScreenCubit cubit = TrackerExerciseDetailsAboutScreenCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
