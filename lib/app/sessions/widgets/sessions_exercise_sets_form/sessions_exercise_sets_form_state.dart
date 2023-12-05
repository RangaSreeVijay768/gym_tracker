part of 'sessions_exercise_sets_form_cubit.dart';

@freezed
class SessionsExerciseSetsFormState with _$SessionsExerciseSetsFormState {
  const factory SessionsExerciseSetsFormState.initial({
    @Default(ControlStatus.pending) ControlStatus formValid
}) = _Initial;
}
