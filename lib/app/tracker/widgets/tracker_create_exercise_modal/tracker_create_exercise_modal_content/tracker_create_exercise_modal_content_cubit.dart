import 'package:beebloom_gym_tracker/app/exercises/widgets/exercises_create_exercise_form/exercises_create_exercise_form.dart';
import 'package:beebloom_gym_tracker/app/exercises/widgets/exercises_create_exercise_form/exercises_create_exercise_form_cubit.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'tracker_create_exercise_modal_content_state.dart';

part 'tracker_create_exercise_modal_content_cubit.freezed.dart';

class TrackerCreateExerciseModalContentCubit
    extends BaseCubit<TrackerCreateExerciseModalContentState> {
  TrackerCreateExerciseModalContentCubit({required super.context})
      : super(initialState: TrackerCreateExerciseModalContentState.initial());
}
