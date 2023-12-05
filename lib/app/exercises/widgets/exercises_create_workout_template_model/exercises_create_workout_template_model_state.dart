part of 'exercises_create_workout_template_model_cubit.dart';

@freezed
class ExercisesCreateWorkoutTemplateModelState
    with _$ExercisesCreateWorkoutTemplateModelState {
  const factory ExercisesCreateWorkoutTemplateModelState.initial({
    List<String>? bodyParts,
    String? userAccountId,
    List<String>? types,
    List<CreateWorkoutTemplateWorkoutModelItem>?
    createWorkoutTemplateWorkoutModelItems,
    CreateWorkoutTemplateModelResponse? createWorkoutTemplateModelResponse,
    @Default(BooleanStatus.initial)
    BooleanStatus createWorkoutTemplateModelStatus,
  }) = _Initial;
}
