import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'sessions_exercise_sets_form_state.dart';

part 'sessions_exercise_sets_form_cubit.freezed.dart';

class SessionsExerciseSetsFormCubit
    extends BaseFormCubit<SessionsExerciseSetsFormState> {
  SessionsExerciseSetsFormCubit({required super.context})
      : super(initialState: SessionsExerciseSetsFormState.initial());

  @override
  FormGroup getFormGroup() {
    return FormGroup({
      'weight' : FormControl<String>(),
      'reps' : FormControl<String>()
    });
  }

  @override
  void updateFormValidationState(ControlStatus event) {
    emit(state.copyWith(formValid: event));
  }
}
