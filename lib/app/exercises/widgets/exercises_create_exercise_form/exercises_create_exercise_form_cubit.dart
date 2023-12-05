import 'package:beebloom_gym_tracker/app/exercises/services/models/create_exercise/create_exercise_request.dart';
import 'package:beebloom_gym_tracker/app/exercises/services/models/create_exercise/create_exercise_response.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';
import '../../services/exercise_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'exercises_create_exercise_form_state.dart';

part 'exercises_create_exercise_form_cubit.freezed.dart';

class ExercisesCreateExerciseFormCubit
    extends BaseFormCubit<ExercisesCreateExerciseFormState> {
  late ExerciseService exerciseService;

  ExercisesCreateExerciseFormCubit({required super.context})
      : super(initialState: ExercisesCreateExerciseFormState.initial()) {
    exerciseService = GetIt.instance<ExerciseService>();
  }

  CreateExerciseRequest createRequestData(
      {String? exerciseName, String? exerciseDescription}) {
    final request = CreateExerciseRequest(
        exerciseName: exerciseName ?? formGroup.control("exerciseName").value,
        exerciseDescription: exerciseDescription ??
            formGroup.control("exerciseDescription").value);
    return request;
  }

  Future<CreateExerciseResponse> createExercise(
      CreateExerciseRequest request) async {
    return exerciseService.createExercise(request).then((value) {
      emit(state.copyWith(
          createExerciseResponse: value,
          createExerciseStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(createExerciseStatus: BooleanStatus.error));
      throw error;
    });
  }

  @override
  FormGroup getFormGroup() {
    return FormGroup({
      'exerciseName': FormControl<String>(validators: [Validators.required]),
      'exerciseDescription':
          FormControl<String>(validators: [Validators.required]),
    });
  }

  @override
  void updateFormValidationState(ControlStatus event) {
    emit(state.copyWith(formValid: event));
  }
}
