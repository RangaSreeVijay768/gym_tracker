import 'package:beebloom_gym_tracker/app/exercises/services/exercise_service.dart';
import 'package:beebloom_gym_tracker/app/exercises/services/models/create_workout_template_model/create_workout_template_model_request.dart';
import 'package:beebloom_gym_tracker/app/exercises/services/models/create_workout_template_model/create_workout_template_model_response.dart';
import 'package:beebloom_gym_tracker/app/exercises/services/models/create_workout_template_model/create_workout_template_workout_model_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '/app/core/blocs/base_cubit.dart';
import '/app/core/database/boolean_status.dart';

part 'exercises_create_workout_template_model_cubit.freezed.dart';
part 'exercises_create_workout_template_model_state.dart';

class ExercisesCreateWorkoutTemplateModelCubit
    extends BaseCubit<ExercisesCreateWorkoutTemplateModelState> {
  late ExerciseService exerciseService;

  ExercisesCreateWorkoutTemplateModelCubit({required super.context})
      : super(
            initialState: ExercisesCreateWorkoutTemplateModelState.initial()) {
    exerciseService = GetIt.instance<ExerciseService>();
  }

  CreateWorkoutTemplateModelRequest createRequestData(
      {List<String>? bodyParts,
      String? userAccountId,
      List<String>? types,
      List<CreateWorkoutTemplateWorkoutModelItem>?
          createWorkoutTemplateWorkoutModelItems}) {
    final request = CreateWorkoutTemplateModelRequest(
        bodyParts: bodyParts ?? state.bodyParts,
        userAccountId: userAccountId ?? state.userAccountId,
        types: types ?? state.types,
        createWorkoutTemplateWorkoutModelItems:
            createWorkoutTemplateWorkoutModelItems ??
                state.createWorkoutTemplateWorkoutModelItems);
    return request;
  }

  Future<CreateWorkoutTemplateModelResponse> createWorkoutTemplateModel(
      CreateWorkoutTemplateModelRequest request) async {
    return exerciseService.createWorkoutTemplateModel(request).then((value) {
      emit(state.copyWith(
          createWorkoutTemplateModelResponse: value,
          createWorkoutTemplateModelStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(
          createWorkoutTemplateModelStatus: BooleanStatus.error));
      throw error;
    });
  }
}
