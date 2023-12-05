import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'exercises_search_exercise_form_state.dart';

part 'exercises_search_exercise_form_cubit.freezed.dart';

class ExercisesSearchExerciseFormCubit
    extends BaseFormCubit<ExercisesSearchExerciseFormState> {
  ExercisesSearchExerciseFormCubit({required super.context})
      : super(initialState: ExercisesSearchExerciseFormState.initial());

  @override
  FormGroup getFormGroup() {
    return FormGroup({
      'search': FormControl<String>(),
    });
  }

  @override
  void updateFormValidationState(ControlStatus event) {
    emit(state.copyWith(formValid: event));
  }
}
