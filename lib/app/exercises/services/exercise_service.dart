import 'package:beebloom_gym_tracker/app/exercises/services/exercise_fire_store_client.dart';
import 'package:beebloom_gym_tracker/app/exercises/services/models/create_workout_template_model/create_workout_template_model_request.dart';
import 'package:beebloom_gym_tracker/app/exercises/services/models/create_workout_template_model/create_workout_template_model_response.dart';
import 'package:beebloom_gym_tracker/app/exercises/services/models/get_all_workout_templates/get_all_workout_templates_request.dart';
import 'package:beebloom_gym_tracker/app/exercises/services/models/get_all_workout_templates/get_all_workout_templates_response.dart';
import 'package:beebloom_gym_tracker/app/exercises/services/models/get_workout_template_workout_model/get_workout_template_workout_model_request.dart';
import 'package:injectable/injectable.dart';

import 'models/create_exercise/create_exercise_request.dart';
import 'models/create_exercise/create_exercise_response.dart';
import 'models/get_all_exercises/get_all_exercises_request.dart';
import 'models/get_all_exercises/get_all_exercises_response.dart';
import 'models/get_exercise/get_exercise_request.dart';
import 'models/get_exercise/get_exercise_response.dart';
import 'models/get_workout_template_model/get_workout_template_model_request.dart';
import 'models/get_workout_template_model/get_workout_template_model_response.dart';
import 'models/get_workout_template_workout_model/get_workout_template_workout_model_response.dart';
import 'models/get_workout_template_workout_set_model/get_workout_template_workout_set_model_request.dart';
import 'models/get_workout_template_workout_set_model/get_workout_template_workout_set_model_response.dart';

@singleton
class ExerciseService {
  ExerciseFireStoreClient exerciseFireStoreClient;

  ExerciseService(this.exerciseFireStoreClient);

  Future<CreateWorkoutTemplateModelResponse> createWorkoutTemplateModel(
      CreateWorkoutTemplateModelRequest request) async {
    return exerciseFireStoreClient.createWorkoutTemplateModel(request);
  }

  Future<CreateExerciseResponse> createExercise(CreateExerciseRequest request) {
    return exerciseFireStoreClient.createExercise(request);
  }

  Future<GetAllExercisesResponse> getAllExercises(
      GetAllExercisesRequest request){
    return exerciseFireStoreClient.getAllExercises(request);
  }

  Future<GetExerciseResponse> getExercise(GetExerciseRequest request){
    return exerciseFireStoreClient.getExercise(request);
  }

  Future<GetAllWorkoutTemplatesResponse> getAllWorkoutTemplates(
      GetAllWorkoutTemplatesRequest request){
    return exerciseFireStoreClient.getAllWorkoutTemplates(request);
  }

  Future<GetWorkoutTemplateModelResponse> getWorkoutTemplateModelByWorkoutTemplate(GetWorkoutTemplateModelRequest request){
    return exerciseFireStoreClient.getWorkoutTemplateModelByWorkoutTemplate(request);
  }

  Future<GetWorkoutTemplateWorkoutModelResponse> getWorkoutTemplateWorkoutModelByWorkoutTemplateWorkout(GetWorkoutTemplateWorkoutModelRequest request){
    return exerciseFireStoreClient.getWorkoutTemplateWorkoutModelByWorkoutTemplateWorkout(request);
  }

  Future<GetWorkoutTemplateWorkoutSetModelResponse> getWorkoutTemplateWorkoutSetModelByWorkoutTemplateWorkoutSet(GetWorkoutTemplateWorkoutSetModelRequest request){
    return exerciseFireStoreClient.getWorkoutTemplateWorkoutSetModelByWorkoutTemplateWorkoutSet(request);
  }

}
