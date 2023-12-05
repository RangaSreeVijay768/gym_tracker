import 'package:beebloom_gym_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_gym_tracker/app/core/logger/log.dart';
import 'package:beebloom_gym_tracker/app/core/models/modal_data.dart';
import 'package:beebloom_gym_tracker/app/core/utils/app_date_time_utils.dart';
import 'package:beebloom_gym_tracker/app/entities/sessions/gym_session.dart';
import 'package:beebloom_gym_tracker/app/sessions/widgets/sessions_get_all_gym_session_exercise_sets/sessions_get_all_gym_session_exercise_sets.dart';
import 'package:beebloom_gym_tracker/app/sessions/widgets/sessions_get_all_gym_session_exercise_sets/sessions_get_all_gym_session_exercise_sets_controller.dart';
import 'package:beebloom_gym_tracker/app/sessions/widgets/sessions_get_all_gym_session_exercises/sessions_get_all_gym_session_exercises_controller.dart';
import 'package:beebloom_gym_tracker/app/sessions/widgets/sessions_get_gym_session_exercise/sessions_get_gym_session_exercise_controller.dart';
import 'package:beebloom_gym_tracker/app/themes/app_colors.dart';
import 'package:beebloom_gym_tracker/app/themes/borders.dart';
import 'package:beebloom_gym_tracker/app/themes/edge_insets.dart';
import 'package:beebloom_gym_tracker/app/themes/fonts.dart';
import 'package:beebloom_gym_tracker/app/tracker/widgets/tracker_create_gym_session_exercise_modal/tracker_create_gym_session_exercise_modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../sessions/widgets/sessions_get_gym_session_exercise/sessions_get_gym_session_exercise.dart';
import '/app/core/modals/base_modal_content/base_modal_content_widget.dart';
import '../../../../core/widgets/core_counter_timer/core_counter_timer.dart';
import '../../../../sessions/widgets/sessions_get_all_gym_session_exercises/sessions_get_all_gym_session_exercises.dart';
import '../../tracker_cancel_workout_alert_popup/tracker_cancel_workout_alert_popup.dart';
import '../tracker_create_new_gym_session_modal_data.dart';
import 'tracker_create_new_gym_session_modal_content_controller.dart';
import 'tracker_create_new_gym_session_modal_content_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackerCreateNewGymSessionModalContent extends BaseModalContent<
    TrackerCreateNewGymSessionModalContentController,
    TrackerCreateNewGymSessionModalContentCubit,
    TrackerCreateNewGymSessionModalContentState,
    TrackerCreateNewGymSessionModalData> {
  GymSession gymSession;

  TrackerCreateNewGymSessionModalContent(
      {Key? key, required this.gymSession, super.controller, super.onStateChanged})
      : super(key: key);
  SessionsGetGymSessionExerciseController
  sessionsGetGymSessionExerciseController =
  SessionsGetGymSessionExerciseController();
  SessionsGetAllGymSessionExercisesController
  sessionsGetAllGymSessionExercisesController =
  SessionsGetAllGymSessionExercisesController();
  SessionsGetAllGymSessionExerciseSetsController sessionsGetAllGymSessionExerciseSetsController = SessionsGetAllGymSessionExerciseSetsController();


  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerCreateNewGymSessionModalContentCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          TrackerCreateNewGymSessionModalContentCubit,
          TrackerCreateNewGymSessionModalContentState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return gymSession != null
              ? Container(
            height: MediaQuery
                .sizeOf(context)
                .height / 1.2,
            child: Column(
              children: [
                Container(
                  padding: edge_insets_16,
                  decoration: BoxDecoration(border: borders.bb_1px_grey4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Empty Workout",
                        style: TextStyle(
                            fontSize: Fonts.fontSize20,
                            fontWeight: Fonts.f700),
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
                    child: SingleChildScrollView(
                      padding: edge_insets_16,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 24,
                          ),
                          Row(
                            children: [
                              Text("Afternoon Workout"),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.more_vert))
                            ],
                          ),
                          CoreCounterTimer(),
                          TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: AppColors.grey4,
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: borderRadius.br_10,
                                    borderSide: BorderSide(
                                      color: AppColors.transparent,
                                    )),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: borderRadius.br_10,
                                    borderSide: BorderSide(
                                        color: AppColors.transparent)),
                                hintText: 'Workout note'),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          SessionsGetAllGymSessionExercises(
                            controller:
                            sessionsGetAllGymSessionExercisesController,
                            onGymSessionExerciseCreated: (createGymSessionExerciseSetResponse) {
                                sessionsGetAllGymSessionExerciseSetsController
                                    .getChildCubit()
                                    .getAllGymSessionExerciseSets(
                                    sessionsGetAllGymSessionExerciseSetsController
                                        .getChildCubit()
                                        .createRequestData());
                            },
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          TrackerCreateGymSessionExerciseModal(
                            gymSession: gymSession,
                            onModalClosed: (data) {
                              if (data.status == BooleanStatus.success) {
                                sessionsGetAllGymSessionExercisesController
                                    .getChildCubit()
                                    .getAllGymSessionExercises(
                                    sessionsGetAllGymSessionExercisesController
                                        .getChildCubit()
                                        .createRequestData());
                              }
                            },
                          ),
                          TrackerCancelWorkoutAlertPopup(),

                        ],
                      ),
                    ))
              ],
            ),
          )
              : Text('Please wait');
        },
      ),
    );
  }

  @override
  TrackerCreateNewGymSessionModalContentCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerCreateNewGymSessionModalContentCubit cubit = TrackerCreateNewGymSessionModalContentCubit(
        context: context, gymSession: gymSession);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
