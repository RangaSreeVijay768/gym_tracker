part of 'tracker_history_calendar_cubit.dart';

@freezed
class TrackerHistoryCalendarState with _$TrackerHistoryCalendarState {
  const factory TrackerHistoryCalendarState.initial({
    required DateTime selectedTime,
}) = _Initial;
}
