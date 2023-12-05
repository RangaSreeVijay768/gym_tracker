import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'tracker_cancel_workout_alert_popup_state.dart';

part 'tracker_cancel_workout_alert_popup_cubit.freezed.dart';

class TrackerCancelWorkoutAlertPopupCubit
    extends BaseCubit<TrackerCancelWorkoutAlertPopupState> {
  TrackerCancelWorkoutAlertPopupCubit({required super.context})
      : super(initialState: TrackerCancelWorkoutAlertPopupState.initial());
}
