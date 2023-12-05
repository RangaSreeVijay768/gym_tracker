import 'package:beebloom_gym_tracker/app/exercises/services/models/get_all_workout_templates/get_all_workout_templates_request.dart';
import 'package:beebloom_gym_tracker/app/exercises/services/models/get_all_workout_templates/get_all_workout_templates_response.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../services/exercise_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'exercises_get_all_workout_templates_state.dart';

part 'exercises_get_all_workout_templates_cubit.freezed.dart';

class ExercisesGetAllWorkoutTemplatesCubit
    extends BaseCubit<ExercisesGetAllWorkoutTemplatesState> {
  late ExerciseService exerciseService;

  ExercisesGetAllWorkoutTemplatesCubit({required super.context})
      : super(initialState: ExercisesGetAllWorkoutTemplatesState.initial()){
    exerciseService = GetIt.instance<ExerciseService>();
    getAllWorkoutTemplates(createRequestData());
  }


    GetAllWorkoutTemplatesRequest createRequestData() {
        final request = GetAllWorkoutTemplatesRequest();
        return request;
      }

    Future<GetAllWorkoutTemplatesResponse> getAllWorkoutTemplates(
        GetAllWorkoutTemplatesRequest request) async {
        return exerciseService.getAllWorkoutTemplates(request).then((value) {
          emit(state.copyWith(
              getAllWorkoutTemplatesResponse: value,
              getAllWorkoutTemplatesStatus: BooleanStatus.success));
          return Future.value(value);
        }).catchError((error) {
          emit(state.copyWith(getAllWorkoutTemplatesStatus: BooleanStatus.error));
          throw error;
        });
      }
}
