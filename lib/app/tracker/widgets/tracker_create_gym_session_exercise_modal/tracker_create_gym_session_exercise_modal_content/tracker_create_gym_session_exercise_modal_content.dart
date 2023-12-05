import 'package:beebloom_gym_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_gym_tracker/app/core/models/modal_data.dart';
import 'package:beebloom_gym_tracker/app/core/utils/app_date_time_utils.dart';
import 'package:beebloom_gym_tracker/app/entities/sessions/gym_session.dart';
import 'package:beebloom_gym_tracker/app/sessions/widgets/sessions_create_gym_session_exercise/sessions_create_gym_session_exercise_controller.dart';
import 'package:beebloom_gym_tracker/app/themes/app_colors.dart';
import 'package:beebloom_gym_tracker/app/themes/fonts.dart';
import 'package:beebloom_gym_tracker/app/tracker/widgets/tracker_create_gym_session_exercise_modal/tracker_create_gym_session_exercise_modal_content/tracker_create_gym_session_exercise_modal_content_controller.dart';
import 'package:beebloom_gym_tracker/app/tracker/widgets/tracker_create_gym_session_exercise_modal/tracker_create_gym_session_exercise_modal_content/tracker_create_gym_session_exercise_modal_content_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../sessions/widgets/sessions_get_all_gym_session_exercise_sets/sessions_get_all_gym_session_exercise_sets.dart';
import '../tracker_create_gym_session_exercise_modal_data.dart';
import '/app/core/modals/base_modal_content/base_modal_content_widget.dart';
import '/app/themes/borders.dart';
import '/app/themes/shadows.dart';
import '/app/themes/edge_insets.dart';
import '../../../../exercises/widgets/exercises_get_all_exercises/exercises_get_all_exercises.dart';
import '../../../../sessions/widgets/sessions_create_gym_session_exercise/sessions_create_gym_session_exercise.dart';



class TrackerCreateGymSessionExerciseModalContent
    extends BaseModalContent<
        TrackerCreateGymSessionExerciseModalContentController,
        TrackerCreateGymSessionExerciseModalContentCubit,
        TrackerCreateGymSessionExerciseModalContentState,
        TrackerCreateGymSessionExerciseModalData> {

  TrackerCreateGymSessionExerciseModalContent(
      {Key? key, super.controller, super.onStateChanged, required this.gymSession}) : super(key: key);
  GymSession gymSession;
  SessionsCreateGymSessionExerciseController
  sessionsCreateGymSessionExerciseController =
  SessionsCreateGymSessionExerciseController();


  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerCreateGymSessionExerciseModalContentCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          TrackerCreateGymSessionExerciseModalContentCubit,
          TrackerCreateGymSessionExerciseModalContentState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Container(
            decoration: BoxDecoration(
                color: AppColors.white, borderRadius: borderRadius.br_t_20),
            height: MediaQuery.sizeOf(context).height / 1.2,
            child: Column(
              children: [
                Container(
                  padding: edge_insets_16,
                  decoration: BoxDecoration(border: borders.bb_1px_grey4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Add Exercise",
                        style: TextStyle(
                            fontSize: Fonts.fontSize22, fontWeight: Fonts.f700),
                      ),
                      IconButton(
                          onPressed: () {
                            closeModal(context,
                                ModalData(status: BooleanStatus.closed));
                          },
                          icon: Icon(Icons.close))
                    ],
                  ),
                ),
                SessionsCreateGymSessionExercise(
                  gymSession: gymSession,
                  controller: sessionsCreateGymSessionExerciseController,
                ),
                Expanded(
                  child: ExercisesGetAllExercisesWithSelect(
                    onExercisesSelected: (exercises) async {
                      if (exercises != null && exercises.isNotEmpty) {
                        for (var exercise in exercises) {
                          await sessionsCreateGymSessionExerciseController
                              .getChildCubit()
                              .createGymSessionExercise(
                              sessionsCreateGymSessionExerciseController
                                  .getChildCubit()
                                  .createRequestData(
                                gymSessionId: gymSession.id,
                                  exerciseId: exercise.id,
                                  startTime: AppDateTimeUtils
                                      .getCurrentTimeOfDay()));
                          closeModal(context,
                              ModalData(status: BooleanStatus.success));
                        }
                      }
                    },
                    onGymSessionExerciseCreated: (created) {
                      closeModal(
                          context,
                          ModalData(
                            status: BooleanStatus.success,
                          ));
                    },
                  ),
                ),
                Container(
                  padding: edge_insets_y_12,
                  decoration: BoxDecoration(
                      border: borders.bt_1px_grey2,
                      boxShadow: const [shadows.bs_primary],
                      color: AppColors.white),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 24,
                      ),
                      Expanded(
                          child: TextButton(
                            onPressed: () {
                              closeModal(
                                  context, ModalData(status: BooleanStatus.closed));
                            },
                            child: Text("Cancel"),
                          )),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                          child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: AppColors.bgPrimary),
                            onPressed: () {},
                            child: Text(
                              "Add",
                              style: TextStyle(color: AppColors.white),
                            ),
                          )),
                      SizedBox(
                        width: 24,
                      ),
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
  TrackerCreateGymSessionExerciseModalContentCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerCreateGymSessionExerciseModalContentCubit cubit = TrackerCreateGymSessionExerciseModalContentCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
