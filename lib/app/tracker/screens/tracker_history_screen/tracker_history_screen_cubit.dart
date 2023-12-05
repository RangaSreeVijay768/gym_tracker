import 'package:beebloom_gym_tracker/app/sessions/widgets/sessions_get_gym_session_by_user_account/sessions_get_gym_session_by_user_account_cubit.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../widgets/tracker_history_calendar/tracker_history_calendar_cubit.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'tracker_history_screen_state.dart';

part 'tracker_history_screen_cubit.freezed.dart';

class TrackerHistoryScreenCubit extends BaseCubit<TrackerHistoryScreenState> {
  TrackerHistoryScreenCubit({required super.context})
      : super(initialState: TrackerHistoryScreenState.initial());
}
