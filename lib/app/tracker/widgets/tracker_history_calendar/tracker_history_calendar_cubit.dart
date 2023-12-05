import 'package:beebloom_gym_tracker/app/core/utils/app_date_time_utils.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'tracker_history_calendar_state.dart';

part 'tracker_history_calendar_cubit.freezed.dart';

class TrackerHistoryCalendarCubit
    extends BaseCubit<TrackerHistoryCalendarState> {
  TrackerHistoryCalendarCubit({required super.context, DateTime? timeOfDay})
      : super(
            initialState: TrackerHistoryCalendarState.initial(
                selectedTime: timeOfDay ??
                    AppDateTimeUtils.getStartTimeOfDateTime(
                        AppDateTimeUtils.getCurrentTimeOfDay())));

  selectDate(DateTime dateTime){
    emit(state.copyWith(selectedTime: dateTime));
  }
}
