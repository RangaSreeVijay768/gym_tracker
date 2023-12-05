import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'exercises_get_exercise_state.dart';

part 'exercises_get_exercise_cubit.freezed.dart';

class ExercisesGetExerciseCubit extends BaseCubit<ExercisesGetExerciseState> {
  ExercisesGetExerciseCubit({required super.context})
      : super(initialState: ExercisesGetExerciseState.initial());
}
