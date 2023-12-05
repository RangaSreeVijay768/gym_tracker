import 'package:beebloom_gym_tracker/app/tracker/widgets/tracker_cancel_workout_alert_popup/tracker_cancel_workout_alert_popup_content/tracker_cancel_workout_alert_popup_content.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../themes/app_colors.dart';
import '/app/themes/borders.dart';
import '/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import 'tracker_cancel_workout_alert_popup_controller.dart';
import 'tracker_cancel_workout_alert_popup_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackerCancelWorkoutAlertPopup
    extends BaseStatelessWidget<
        TrackerCancelWorkoutAlertPopupController,
        TrackerCancelWorkoutAlertPopupCubit,
        TrackerCancelWorkoutAlertPopupState> {

  TrackerCancelWorkoutAlertPopup(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerCancelWorkoutAlertPopupCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          TrackerCancelWorkoutAlertPopupCubit,
          TrackerCancelWorkoutAlertPopupState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Row(
            children: [
              Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                        foregroundColor: AppColors.textRed
                    ),
                    onPressed: (){
                      showDialog(
                          context: context,
                          builder: (context){
                            return TrackerCancelWorkoutAlertPopupContent();
                          }
                      );
                    },
                    child: Text("Cancel Workout"),
                  )
              )
            ],
          );
        },
      ),
    );
  }

  @override
  TrackerCancelWorkoutAlertPopupCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerCancelWorkoutAlertPopupCubit cubit = TrackerCancelWorkoutAlertPopupCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
