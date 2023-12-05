part of 'exercises_create_exercise_form_cubit.dart';

@freezed
class ExercisesCreateExerciseFormState with _$ExercisesCreateExerciseFormState {
  const factory ExercisesCreateExerciseFormState.initial({
    @Default(ControlStatus.pending)ControlStatus formValid,
    CreateExerciseResponse? createExerciseResponse,
    @Default(BooleanStatus.initial) BooleanStatus createExerciseStatus,
  }) = _Initial;
}
