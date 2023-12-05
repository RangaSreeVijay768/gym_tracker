import 'package:beebloom_gym_tracker/app/themes/app_colors.dart';
import 'package:beebloom_gym_tracker/app/themes/borders.dart';
import 'package:beebloom_gym_tracker/app/themes/edge_insets.dart';
import 'package:beebloom_gym_tracker/app/themes/fonts.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../sessions/widgets/sessions_get_all_gym_sessions_by_user_account/sessions_get_all_gym_sessions_by_user_account.dart';
import '../../../sessions/widgets/sessions_get_gym_session_by_user_account/sessions_get_gym_session_by_user_account.dart';
import '../../services/calendar.dart';
import '../../widgets/tracker_history_calendar/tracker_history_calendar.dart';
import '../tracker_history_template_details_screen/tracker_history_template_details_screen.dart';
import 'tracker_history_screen_controller.dart';
import 'tracker_history_screen_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackerHistoryScreen extends BaseStatelessWidget<
    TrackerHistoryScreenController,
    TrackerHistoryScreenCubit,
    TrackerHistoryScreenState> {
  TrackerHistoryScreen({Key? key, super.controller, super.onStateChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerHistoryScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerHistoryScreenCubit, TrackerHistoryScreenState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Scaffold(
            appBar: AppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("History"), TrackerHistoryCalendar()],
              ),
            ),
            body: Center(
              child: SingleChildScrollView(
                padding: edge_insets_16,
                child: Column(
                  children: [

                    SessionsGetAllGymSessionsByUserAccount(
                      userAccount: getLoggedUserAccount(context)!,
                    )
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
  TrackerHistoryScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerHistoryScreenCubit cubit =
        TrackerHistoryScreenCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
