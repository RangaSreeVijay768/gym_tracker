import 'package:beebloom_gym_tracker/app/core/models/users/user_account.dart';
import 'package:beebloom_gym_tracker/app/exercises/widgets/exercises_create_exercise_form/exercises_create_exercise_form_cubit.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'tracker_exercises_screen_state.dart';

part 'tracker_exercises_screen_cubit.freezed.dart';

class TrackerExercisesScreenCubit
    extends BaseCubit<TrackerExercisesScreenState> {
  // UserAccount userAccount;
  TrackerExercisesScreenCubit({required super.context})
      : super(initialState: TrackerExercisesScreenState.initial());
}
