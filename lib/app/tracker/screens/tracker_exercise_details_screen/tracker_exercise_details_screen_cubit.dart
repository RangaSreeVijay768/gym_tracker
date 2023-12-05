import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'tracker_exercise_details_screen_state.dart';

part 'tracker_exercise_details_screen_cubit.freezed.dart';

class TrackerExerciseDetailsScreenCubit
    extends BaseCubit<TrackerExerciseDetailsScreenState> {
  TrackerExerciseDetailsScreenCubit({required super.context})
      : super(initialState: TrackerExerciseDetailsScreenState.initial());
}
