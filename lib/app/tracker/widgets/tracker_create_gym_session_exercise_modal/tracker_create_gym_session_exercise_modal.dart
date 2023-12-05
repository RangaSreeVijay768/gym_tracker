import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../entities/sessions/gym_session.dart';
import '../../../themes/app_colors.dart';
import '/app/themes/borders.dart';
import '/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';
import '/app/core/modals/base_modal/base_modal_widget.dart';
import 'tracker_create_gym_session_exercise_modal_content/tracker_create_gym_session_exercise_modal_content.dart';
import 'tracker_create_gym_session_exercise_modal_controller.dart';
import 'tracker_create_gym_session_exercise_modal_cubit.dart';
import 'tracker_create_gym_session_exercise_modal_data.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackerCreateGymSessionExerciseModal
    extends BaseModalWidget<
        TrackerCreateGymSessionExerciseModalController,
        TrackerCreateGymSessionExerciseModalCubit,
        TrackerCreateGymSessionExerciseModalState,
        TrackerCreateGymSessionExerciseModalData> {
  GymSession gymSession;

  TrackerCreateGymSessionExerciseModal(
      {Key? key, super.controller, super.onStateChanged, super.onModalClosed, required this.gymSession})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerCreateGymSessionExerciseModalCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          TrackerCreateGymSessionExerciseModalCubit,
          TrackerCreateGymSessionExerciseModalState>(
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
                    style:
                    TextButton.styleFrom(foregroundColor: AppColors.bgPrimary),
                    onPressed: () {
                      openModal(context: context, cubit: getCubit(context));
                    },
                    child: Text("Add Exercise"),
                  ))
            ],
          );
        },
      ),
    );
  }

  @override
  TrackerCreateGymSessionExerciseModalCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerCreateGymSessionExerciseModalCubit cubit = TrackerCreateGymSessionExerciseModalCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

  @override
  Widget getModalContentWidget({required BuildContext context}) {
    return TrackerCreateGymSessionExerciseModalContent(gymSession: gymSession,);
  }
}
