import 'package:beebloom_gym_tracker/app/core/logger/log.dart';
import 'package:beebloom_gym_tracker/app/core/utils/app_date_time_utils.dart';
import 'package:beebloom_gym_tracker/app/exercises/widgets/exercises_create_workout_template_model/exercises_create_workout_template_model.dart';
import 'package:beebloom_gym_tracker/app/sessions/widgets/sessions_create_gym_session/sessions_create_gym_session.dart';
import 'package:beebloom_gym_tracker/app/themes/app_colors.dart';
import 'package:beebloom_gym_tracker/app/themes/borders.dart';
import 'package:beebloom_gym_tracker/app/themes/buttons.dart';
import 'package:beebloom_gym_tracker/app/themes/edge_insets.dart';
import 'package:beebloom_gym_tracker/app/themes/fonts.dart';
import 'package:beebloom_gym_tracker/app/themes/shadows.dart';
import 'package:beebloom_gym_tracker/app/tracker/widgets/tracker_create_new_gym_session_modal/tracker_create_new_gym_session_modal.dart';
import 'package:beebloom_gym_tracker/app/tracker/widgets/tracker_create_new_gym_session_modal/tracker_create_new_gym_session_modal_controller.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../sessions/widgets/sessions_create_gym_session/sessions_create_gym_session_controller.dart';
import '../../widgets/tracker_workout_tab_bar_widget/tracker_workout_tab_bar_widget.dart';
import 'tracker_workout_screen_controller.dart';
import 'tracker_workout_screen_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackerWorkoutScreen extends BaseStatelessWidget<
    TrackerWorkoutScreenController,
    TrackerWorkoutScreenCubit,
    TrackerWorkoutScreenState> {
  TrackerWorkoutScreen({super.key, super.controller, super.onStateChanged});

  SessionsCreateGymSessionController sessionsCreateGymSessionController =
      SessionsCreateGymSessionController();
  TrackerCreateNewGymSessionModalController
      trackerCreateNewGymSessionModalController =
      TrackerCreateNewGymSessionModalController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerWorkoutScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerWorkoutScreenCubit, TrackerWorkoutScreenState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Scaffold(
            body: SingleChildScrollView(
              child: Container(
                height: MediaQuery.sizeOf(context).height * 1.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                "images/gym_home_bg.png",
                              ),
                              const SizedBox(
                                height: 100,
                              )
                            ],
                          ),
                          Container(
                            padding: edge_insets_24,
                            margin: edge_insets_x_16,
                            decoration: BoxDecoration(
                                color: AppColors.textHeading,
                                boxShadow: const [shadows.bs_grey],
                                borderRadius: borderRadius.br_10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: edge_insets_r_20,
                                  child: ClipRRect(
                                    borderRadius: borderRadius.br_100,
                                    child: Image.asset(
                                      'images/next_activity_illustration.png',
                                      height: 80,
                                      width: 80,
                                    ),
                                  ),
                                ),
                                Flexible(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Your Morning workout session starts in;",
                                      style: TextStyle(
                                          fontWeight: Fonts.f500,
                                          color: AppColors.white,
                                          fontSize: Fonts.fontSize14),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      padding: edge_insets_5,
                                      color: AppColors.textRed,
                                      child: const Text(
                                        "10:34 sec",
                                        style: TextStyle(
                                            fontSize: Fonts.fontSize18,
                                            fontWeight: Fonts.f500),
                                      ),
                                    )
                                  ],
                                )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    SessionsCreateGymSession(
                      startTime: AppDateTimeUtils.getCurrentTimeOfDay(),
                      userAccount: getLoggedUserAccount(context)!,
                      controller: sessionsCreateGymSessionController,
                      onStateChanged: (sessionsCreateGymSessionState) {
                        logger.d(sessionsCreateGymSessionState);
                        trackerCreateNewGymSessionModalController
                            .getChildCubit()
                            .emitState(trackerCreateNewGymSessionModalController
                                .getChildCubit()
                                .state
                                .copyWith(
                                    openModal: false,
                                    gymSession: sessionsCreateGymSessionState
                                        .createGymSessionResponse!.gymSession));
                        trackerCreateNewGymSessionModalController
                            .getChildCubit()
                            .openModal();
                      },
                    ),
                    Container(
                      padding: edge_insets_x_16,
                      child: Row(
                        children: [
                          Expanded(
                              child: TextButton(
                                  style: Buttons.primaryButton,
                                  onPressed: () {
                                    sessionsCreateGymSessionController
                                        .getChildCubit()
                                        .createGymSession(
                                            sessionsCreateGymSessionController
                                                .getChildCubit()
                                                .createRequestData());
                                  },
                                  child: const Text(
                                    "Start a new session",
                                    style: TextStyle(
                                        color: AppColors.white,
                                        fontWeight: Fonts.f500,
                                        fontSize: Fonts.fontSize18),
                                  )))
                        ],
                      ),
                    ),
                    Container(
                      padding: edge_insets_x_16,
                      child: TrackerCreateNewGymSessionModal(
                        controller: trackerCreateNewGymSessionModalController,
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Container(
                      padding: edge_insets_x_16,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Templates",
                            style: TextStyle(
                                fontWeight: Fonts.f700,
                                fontSize: Fonts.fontSize18),
                          ),
                        ],
                      ),
                    ),
                    // Container(
                    //   padding: edge_insets_16,
                    //   child: ExercisesGetWorkoutTemplateModel(),
                    // ),
                    Expanded(
                        child: Container(
                      padding: edge_insets_x_16,
                      child: TrackerWorkoutTabBarWidget(),
                    )),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  TrackerWorkoutScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerWorkoutScreenCubit cubit =
        TrackerWorkoutScreenCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
