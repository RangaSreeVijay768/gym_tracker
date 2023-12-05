import 'package:beebloom_gym_tracker/app/themes/app_colors.dart';
import 'package:beebloom_gym_tracker/app/themes/fonts.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../core/modals/base_modal/base_modal_widget.dart';
import '../../../themes/edge_insets.dart';
import '../../../themes/borders.dart';
import '../../../themes/shadows.dart';
import 'tracker_create_exercise_modal_content/tracker_create_exercise_modal_content.dart';
import 'tracker_create_exercise_modal_controller.dart';
import 'tracker_create_exercise_modal_cubit.dart';
import 'tracker_create_exercise_modal_data.dart';




class TrackerCreateExerciseModal
    extends BaseModalWidget<
        TrackerCreateExerciseModalController,
        TrackerCreateExerciseModalCubit,
        TrackerCreateExerciseModalState,
        TrackerCreateExerciseModalData> {
  TrackerCreateExerciseModal(
      {Key? key, super.controller, super.onStateChanged, super.onModalClosed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerCreateExerciseModalCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          TrackerCreateExerciseModalCubit,
          TrackerCreateExerciseModalState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Container(
            margin: edge_insets_x_16,
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
                        onPressed: () {
                          openModal(context: context, cubit: getCubit(context));
                        },
                        child: const Text('Add new exercise', style: TextStyle(
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
  TrackerCreateExerciseModalCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerCreateExerciseModalCubit cubit = TrackerCreateExerciseModalCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

  @override
  Widget getModalContentWidget({required BuildContext context}) {
    return TrackerCreateExerciseModalContent();
  }
}
