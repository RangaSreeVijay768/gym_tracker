import 'package:beebloom_gym_tracker/app/sessions/widgets/sessions_create_gym_session/sessions_create_gym_session.dart';
import 'package:beebloom_gym_tracker/app/sessions/widgets/sessions_create_gym_session/sessions_create_gym_session_cubit.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'tracker_workout_screen_state.dart';

part 'tracker_workout_screen_cubit.freezed.dart';

class TrackerWorkoutScreenCubit extends BaseCubit<TrackerWorkoutScreenState> {
  TrackerWorkoutScreenCubit({required super.context})
      : super(initialState: TrackerWorkoutScreenState.initial());
}
