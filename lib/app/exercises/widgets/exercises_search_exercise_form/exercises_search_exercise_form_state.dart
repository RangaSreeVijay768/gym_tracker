part of 'exercises_search_exercise_form_cubit.dart';

@freezed
class ExercisesSearchExerciseFormState with _$ExercisesSearchExerciseFormState {
  const factory ExercisesSearchExerciseFormState.initial({
    @Default(ControlStatus.pending) ControlStatus formValid
}) = _Initial;
}
