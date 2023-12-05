import 'package:beebloom_gym_tracker/app/core/models/modal_data.dart';
import 'package:beebloom_gym_tracker/app/exercises/widgets/exercises_create_exercise_form/exercises_create_exercise_form.dart';
import 'package:beebloom_gym_tracker/app/themes/app_colors.dart';
import 'package:beebloom_gym_tracker/app/themes/borders.dart';
import 'package:beebloom_gym_tracker/app/themes/buttons.dart';
import 'package:beebloom_gym_tracker/app/themes/edge_insets.dart';
import 'package:beebloom_gym_tracker/app/themes/fonts.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import '../../../../core/database/boolean_status.dart';
import '../../../../exercises/widgets/exercises_create_exercise_form/exercises_create_exercise_form_controller.dart';
import '/app/core/modals/base_modal_content/base_modal_content_widget.dart';
import '../tracker_create_exercise_modal_data.dart';
import 'tracker_create_exercise_modal_content_controller.dart';
import 'tracker_create_exercise_modal_content_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackerCreateExerciseModalContent extends BaseModalContent<
    TrackerCreateExerciseModalContentController,
    TrackerCreateExerciseModalContentCubit,
    TrackerCreateExerciseModalContentState,
    TrackerCreateExerciseModalData> {
  TrackerCreateExerciseModalContent(
      {Key? key, super.controller, super.onStateChanged})
      : super(key: key);
  ExercisesCreateExerciseFormController exercisesCreateExerciseFormController =
      ExercisesCreateExerciseFormController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerCreateExerciseModalContentCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerCreateExerciseModalContentCubit,
          TrackerCreateExerciseModalContentState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Container(
            height: MediaQuery.sizeOf(context).height / 1.3,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: edge_insets_16,
                  decoration: BoxDecoration(border: borders.bb_1px_grey4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Create exercise",
                        style: TextStyle(
                            fontWeight: Fonts.f700, fontSize: Fonts.fontSize20),
                      ),
                      IconButton(
                          onPressed: () {
                            closeModal(context,
                                ModalData(status: BooleanStatus.success));
                          },
                          icon: Icon(Icons.close))
                    ],
                  ),
                ),
                Flexible(
                    child: Container(
                        padding: edge_insets_16,
                        child: ExercisesCreateExerciseForm(
                          controller: exercisesCreateExerciseFormController,
                          onStateChanged: (exercisesCreateExerciseFormState) {
                            getCubit(context).emitState(state.copyWith(
                                exercisesCreateExerciseFormState:
                                    exercisesCreateExerciseFormState));
                          },
                        ))),
                Container(
                  padding: edge_insets_y_12,
                  decoration: BoxDecoration(
                    border: borders.bt_1px_grey4
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 30,),
                      Expanded(
                          child: TextButton(
                              style: Buttons.primaryButton,
                              onPressed: (state.exercisesCreateExerciseFormState
                                  ?.createExerciseStatus ==
                                  BooleanStatus.pending || state.exercisesCreateExerciseFormState?.formValid != ControlStatus.valid)
                                  ? null
                                  : () async {
                                await exercisesCreateExerciseFormController
                                    .getChildCubit()
                                    .createExercise(
                                    exercisesCreateExerciseFormController
                                        .getChildCubit()
                                        .createRequestData());
                                closeModal(context,
                                    ModalData(status: BooleanStatus.success));
                              },
                              child: Text("Create Exercise", style: TextStyle(
                                  color: AppColors.white,
                                fontSize: Fonts.fontSize16,
                                fontWeight: Fonts.f500
                              ),))
                      ),
                      SizedBox(width: 30,)
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  TrackerCreateExerciseModalContentCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerCreateExerciseModalContentCubit cubit =
        TrackerCreateExerciseModalContentCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
