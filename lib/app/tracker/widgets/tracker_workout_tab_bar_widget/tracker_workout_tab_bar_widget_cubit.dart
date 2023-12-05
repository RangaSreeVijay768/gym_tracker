import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'tracker_workout_tab_bar_widget_state.dart';

part 'tracker_workout_tab_bar_widget_cubit.freezed.dart';

class TrackerWorkoutTabBarWidgetCubit
    extends BaseCubit<TrackerWorkoutTabBarWidgetState> {
  TrackerWorkoutTabBarWidgetCubit({required super.context})
      : super(initialState: TrackerWorkoutTabBarWidgetState.initial());
}
