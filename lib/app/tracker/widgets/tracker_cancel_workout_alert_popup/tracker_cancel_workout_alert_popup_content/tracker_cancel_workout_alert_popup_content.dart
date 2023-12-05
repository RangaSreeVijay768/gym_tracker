import 'package:beebloom_gym_tracker/app/themes/app_colors.dart';
import 'package:beebloom_gym_tracker/app/themes/fonts.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '/app/themes/borders.dart';
import '/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import 'tracker_cancel_workout_alert_popup_content_controller.dart';
import 'tracker_cancel_workout_alert_popup_content_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackerCancelWorkoutAlertPopupContent extends BaseStatelessWidget<
    TrackerCancelWorkoutAlertPopupContentController,
    TrackerCancelWorkoutAlertPopupContentCubit,
    TrackerCancelWorkoutAlertPopupContentState> {
  TrackerCancelWorkoutAlertPopupContent(
      {Key? key, super.controller, super.onStateChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerCancelWorkoutAlertPopupContentCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerCancelWorkoutAlertPopupContentCubit,
          TrackerCancelWorkoutAlertPopupContentState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return AlertDialog(
            content: Container(
              height: MediaQuery.sizeOf(context).height/4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Discard workout?",
                    style: TextStyle(
                        fontWeight: Fonts.f700, fontSize: Fonts.fontSize24),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Are you sure you want to discard this workout? This cannot be undone.",
                    style: TextStyle(
                      fontSize: Fonts.fontSize16,
                      fontWeight: Fonts.f500,
                      color: AppColors.grey1
                    ),
                  ),
                  SizedBox(height: 32,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          side: BorderSide(color: AppColors.bgPrimary, width: 2),
                          padding: edge_insets_x_30
                        ),
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          child: Text("Resume")
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                              side: BorderSide(color: AppColors.textRed, width: 2),
                            foregroundColor: AppColors.textRed
                          ),
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          child: Text("Cancel Workout")
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  TrackerCancelWorkoutAlertPopupContentCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerCancelWorkoutAlertPopupContentCubit cubit =
        TrackerCancelWorkoutAlertPopupContentCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
