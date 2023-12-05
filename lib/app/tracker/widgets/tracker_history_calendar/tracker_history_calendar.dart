import 'package:beebloom_gym_tracker/app/core/utils/app_date_time_utils.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '/app/themes/borders.dart';
import '/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import 'tracker_history_calendar_controller.dart';
import 'tracker_history_calendar_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackerHistoryCalendar
    extends BaseStatelessWidget<
        TrackerHistoryCalendarController,
        TrackerHistoryCalendarCubit,
        TrackerHistoryCalendarState> {

  TrackerHistoryCalendar({Key? key, super.controller, super.onStateChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerHistoryCalendarCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          TrackerHistoryCalendarCubit,
          TrackerHistoryCalendarState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Row(
            children: [
              Text('${state.selectedTime.day}-${state.selectedTime.month}-${state.selectedTime.year}'),
              IconButton(
                onPressed: () async{
                  DateTime? date = await showDialog(
                      context: context,
                      builder: (context){
                        return DatePickerDialog(
                          // restorationId: 'date_picker_dialog',
                          initialEntryMode: DatePickerEntryMode.calendarOnly,
                          initialDate: state.selectedTime,
                          firstDate: DateTime(2021),
                          lastDate: DateTime(2030),
                        );
                      }
                  );
                  if(date != null){
                    getCubit(context).selectDate(date);
                  }
                },
                icon: Icon(Icons.calendar_month),
              )
            ],
          );
        },
      ),
    );
  }

  @override
  TrackerHistoryCalendarCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerHistoryCalendarCubit cubit = TrackerHistoryCalendarCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
