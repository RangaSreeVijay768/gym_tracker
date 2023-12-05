import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/models/exercise_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/models/workout_template_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/models/workout_template_workout_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/models/workout_template_workout_model_set.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/services/exercise_store_service.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/users/models/user_account_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/users/services/users_store_service.dart';
import 'package:beebloom_gym_tracker/app/core/logger/log.dart';
import 'package:beebloom_gym_tracker/app/entities/exceptions/not_found_exception.dart';
import 'package:beebloom_gym_tracker/app/entities/exercises/exercise.dart';
import 'package:beebloom_gym_tracker/app/entities/exercises/workout_template.dart';
import 'package:beebloom_gym_tracker/app/entities/exercises/workout_template_workout.dart';
import 'package:beebloom_gym_tracker/app/entities/exercises/workout_template_workout_set.dart';
import 'package:beebloom_gym_tracker/app/exercises/services/models/create_exercise/create_exercise_request.dart';
import 'package:beebloom_gym_tracker/app/exercises/services/models/create_exercise/create_exercise_response.dart';
import 'package:beebloom_gym_tracker/app/exercises/services/models/create_workout_template_model/create_workout_template_model_request.dart';
import 'package:beebloom_gym_tracker/app/exercises/services/models/create_workout_template_model/create_workout_template_model_response.dart';
import 'package:beebloom_gym_tracker/app/exercises/services/models/get_all_exercises/get_all_exercises_request.dart';
import 'package:beebloom_gym_tracker/app/exercises/services/models/get_all_exercises/get_all_exercises_response.dart';
import 'package:beebloom_gym_tracker/app/exercises/services/models/get_all_workout_templates/get_all_workout_templates_request.dart';
import 'package:beebloom_gym_tracker/app/exercises/services/models/get_all_workout_templates/get_all_workout_templates_response.dart';
import 'package:beebloom_gym_tracker/app/exercises/services/models/get_exercise/get_exercise_request.dart';
import 'package:beebloom_gym_tracker/app/exercises/services/models/get_exercise/get_exercise_response.dart';
import 'package:beebloom_gym_tracker/app/exercises/services/models/get_workout_template_model/get_workout_template_model_request.dart';
import 'package:beebloom_gym_tracker/app/exercises/services/models/get_workout_template_model/get_workout_template_model_response.dart';
import 'package:beebloom_gym_tracker/app/exercises/services/models/get_workout_template_workout_model/get_workout_template_workout_model_request.dart';
import 'package:beebloom_gym_tracker/app/exercises/services/models/get_workout_template_workout_model/get_workout_template_workout_model_response.dart';
import 'package:beebloom_gym_tracker/app/exercises/services/models/get_workout_template_workout_set_model/get_workout_template_workout_set_model_request.dart';
import 'package:beebloom_gym_tracker/app/exercises/services/models/get_workout_template_workout_set_model/get_workout_template_workout_set_model_response.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@singleton
class ExerciseFireStoreClient {
  ExerciseStoreService exerciseStoreService;
  UsersStoreService usersStoreService;

  ExerciseFireStoreClient(this.exerciseStoreService, this.usersStoreService);

  Future<CreateExerciseResponse> createExercise(
      CreateExerciseRequest request) async {
    ExerciseModel exerciseModel = ExerciseModel.fromJson(request.toJson());
    DocumentReference<ExerciseModel> exerciseModelReference =
        await exerciseStoreService.saveExerciseModel(exerciseModel);
    DocumentSnapshot<ExerciseModel> exerciseModelDocumentSnapshot =
        await exerciseModelReference.get();

    Exercise exercise =
        Exercise.fromJson(exerciseModelDocumentSnapshot.data()!.toJson());
    exercise = exercise.copyWith(id: exercise.id);

    return CreateExerciseResponse(exercise: exercise);
  }

  Future<GetExerciseResponse> getExercise(GetExerciseRequest request) async {
    DocumentReference<ExerciseModel> exerciseModelDocumentReference =
        await exerciseStoreService.getExerciseModel(request.id!);
    DocumentSnapshot<ExerciseModel> exerciseModelDocumentSnapshot =
        await exerciseModelDocumentReference.get();
    if (exerciseModelDocumentSnapshot.exists) {
      Exercise exercise =
          Exercise.fromJson(exerciseModelDocumentSnapshot.data()!.toJson());
      exercise = exercise.copyWith(id: exerciseModelDocumentSnapshot.id);
      return Future.value(GetExerciseResponse(exercise: exercise));
    } else {
      return Future.error(NotFoundException(
          message: 'exercise with id ${request.id} doesnt exist'));
    }
  }

  Future<GetAllExercisesResponse> getAllExercises(
      GetAllExercisesRequest request) async {
    QuerySnapshot<ExerciseModel> exerciseModelQuerySnapshot =
        await exerciseStoreService.getAllExerciseModels();
    List<Exercise> exercises = exerciseModelQuerySnapshot.docs.map((e) {
      Exercise exercise = Exercise.fromJson(e.data().toJson());
      exercise = exercise.copyWith(id: e.id);
      // logger.d(exercise.toJson());
      return exercise;
    }).toList();
    return GetAllExercisesResponse(
        size: exerciseModelQuerySnapshot.size, exercises: exercises);
  }

  Future<GetAllWorkoutTemplatesResponse> getAllWorkoutTemplates(
      GetAllWorkoutTemplatesRequest request) async {
    QuerySnapshot<WorkoutTemplateModel> workoutTemplateModelQuerySnapshot =
        await exerciseStoreService.getAllWorkoutTemplateModels();
    List<WorkoutTemplate> workoutTemplates =
        workoutTemplateModelQuerySnapshot.docs.map((e) {
      WorkoutTemplate workoutTemplate =
          WorkoutTemplate.fromJson(e.data().toJson());
      WorkoutTemplateModel workoutTemplateModel = e.data();
      workoutTemplate = workoutTemplate.copyWith(
          id: e.id, workoutId: workoutTemplateModel.createdBy?.id);
      return workoutTemplate;
    }).toList();
    return GetAllWorkoutTemplatesResponse(
        size: workoutTemplateModelQuerySnapshot.size,
        workoutTemplates: workoutTemplates);
  }

  Future<CreateWorkoutTemplateModelResponse> createWorkoutTemplateModel(
      CreateWorkoutTemplateModelRequest request) async {
    String createdById = request.userAccountId!;
    DocumentReference<UserAccountModel> userAccountModelDocumentReference =
        await this
            .usersStoreService
            .userAccountModelRepo
            .getDocumentReference(createdById);

    WorkoutTemplateModel workoutTemplateModel =
        WorkoutTemplateModel.fromJson(request.toJson());
    workoutTemplateModel = workoutTemplateModel.copyWith(
        createdBy: userAccountModelDocumentReference);
    logger.d(workoutTemplateModel.toJson());
    DocumentReference<WorkoutTemplateModel> workoutTemplateModelReference =
        await exerciseStoreService
            .saveWorkoutTemplateModel(workoutTemplateModel);

    logger.d(request.toJson());

    DocumentSnapshot<WorkoutTemplateModel>
        workoutTemplateModelDocumentSnapshot =
        await workoutTemplateModelReference.get();

    WorkoutTemplate workoutTemplate = WorkoutTemplate.fromJson(
        workoutTemplateModelDocumentSnapshot.data()!.toJson());
    workoutTemplate = workoutTemplate.copyWith(id: workoutTemplate.id);

    return CreateWorkoutTemplateModelResponse(workoutTemplate: workoutTemplate);
  }

  Future<GetWorkoutTemplateModelResponse> getWorkoutTemplateModel(
      GetWorkoutTemplateModelRequest request) async {
    DocumentReference<WorkoutTemplateModel>
        workoutTemplateModelDocumentReference = await exerciseStoreService
            .getWorkoutTemplateModelDocumentReference(request.workTemplateId!);
    DocumentSnapshot<WorkoutTemplateModel>
        workoutTemplateModelDocumentSnapshot =
        await workoutTemplateModelDocumentReference.get();
    if (workoutTemplateModelDocumentSnapshot.exists) {
      WorkoutTemplate workoutTemplate = WorkoutTemplate.fromJson(
          workoutTemplateModelDocumentSnapshot.data()!.toJson());
      workoutTemplate =
          workoutTemplate.copyWith(id: workoutTemplateModelDocumentSnapshot.id);
      return Future.value(
          GetWorkoutTemplateModelResponse(workoutTemplate: workoutTemplate));
    } else {
      return Future.error(NotFoundException(
          message:
              'workoutTemplate with id ${request.workTemplateId} doesnt exist'));
    }
  }

  Future<GetWorkoutTemplateModelResponse>
      getWorkoutTemplateModelByWorkoutTemplate(
          GetWorkoutTemplateModelRequest request) async {
    DocumentReference<UserAccountModel> createdByDocumentSnapshot =
        await usersStoreService
            .getUserAccountModelDocumentReference(request.workTemplateId!);

    DocumentSnapshot<WorkoutTemplateModel>? lastDocumentSnapshot;

    if (request.lastDocumentId != null) {
      lastDocumentSnapshot = await exerciseStoreService
          .getWorkoutTemplateModelDocumentSnapshot(request.lastDocumentId!);
    }

    QuerySnapshot<WorkoutTemplateModel> workoutTemplateModelQuerySnapshot =
        await exerciseStoreService
            .getWorkoutTemplateModelByWorkoutTemplateModel(
                createdByDocumentSnapshot,
                lastDocumentSnapshot: lastDocumentSnapshot,
                descending: request.descending,
                fieldName: request.fieldName,
                count: request.count);

    List<WorkoutTemplate> workoutTemplates =
        workoutTemplateModelQuerySnapshot.docs.map((e) {
      WorkoutTemplate workoutTemplates =
          WorkoutTemplate.fromJson(e.data().toJson());
      workoutTemplates = workoutTemplates.copyWith(id: e.id);
      return workoutTemplates;
    }).toList();
    return GetWorkoutTemplateModelResponse(
        size: workoutTemplateModelQuerySnapshot.size,
        workoutTemplates: workoutTemplates);
  }

  Future<GetWorkoutTemplateWorkoutModelResponse>
      getWorkoutTemplateWorkoutModelByWorkoutTemplateWorkout(
          GetWorkoutTemplateWorkoutModelRequest request) async {
    DocumentReference<ExerciseModel> exerciseModelDocumentSnapshot =
        await exerciseStoreService
            .getExerciseModelDocumentReference(request.workTemplateId!);

    DocumentReference<WorkoutTemplateModel>
        workoutTemplateWorkoutModelDocumentSnapshot = await exerciseStoreService
            .getWorkoutTemplateModelDocumentReference(request.workTemplateId!);

    DocumentSnapshot<WorkoutTemplateWorkoutModel>? lastDocumentSnapshot;

    if (request.lastDocumentId != null) {
      lastDocumentSnapshot = await exerciseStoreService
          .getWorkoutTemplateWorkoutModelDocumentSnapshot(
              request.lastDocumentId!);
    }

    QuerySnapshot<WorkoutTemplateWorkoutModel>
        workoutTemplateWorkoutsModelQuerySnapshot = await exerciseStoreService
            .getWorkoutTemplateWorkoutModelByWorkoutTemplateWorkoutModel(
                exerciseModelDocumentSnapshot,
                workoutTemplateWorkoutModelDocumentSnapshot,
                lastDocumentSnapshot: lastDocumentSnapshot,
                descending: request.descending,
                fieldName: request.fieldName,
                count: request.count);

    List<WorkoutTemplateWorkout> workoutTemplateWorkout =
        workoutTemplateWorkoutsModelQuerySnapshot.docs.map((e) {
      WorkoutTemplateWorkout workoutTemplateWorkouts =
          WorkoutTemplateWorkout.fromJson(e.data().toJson());
      workoutTemplateWorkouts = workoutTemplateWorkouts.copyWith(id: e.id);
      return workoutTemplateWorkouts;
    }).toList();
    return GetWorkoutTemplateWorkoutModelResponse(
        size: workoutTemplateWorkoutsModelQuerySnapshot.size,
        workoutTemplateWorkout: workoutTemplateWorkout);
  }

  Future<GetWorkoutTemplateWorkoutSetModelResponse>
      getWorkoutTemplateWorkoutSetModelByWorkoutTemplateWorkoutSet(
          GetWorkoutTemplateWorkoutSetModelRequest request) async {
    DocumentReference<ExerciseModel> exerciseModelDocumentSnapshot =
        await exerciseStoreService
            .getExerciseModelDocumentReference(request.workoutTemplateId!);

    DocumentReference<WorkoutTemplateWorkoutModel>
        workoutTemplateWorkoutModelDocumentSnapshot = await exerciseStoreService
            .getWorkoutTemplateWorkoutModelDocumentReference(
                request.workoutTemplateId!);

    DocumentSnapshot<WorkoutTemplateWorkoutModelSet>? lastDocumentSnapshot;

    if (request.lastDocumentId != null) {
      lastDocumentSnapshot = await exerciseStoreService
          .getWorkoutTemplateWorkoutModelSetDocumentSnapshot(
              request.lastDocumentId!);
    }

    QuerySnapshot<WorkoutTemplateWorkoutModelSet>
        workoutTemplateWorkoutSetModelQuerySnapshot = await exerciseStoreService
            .getWorkoutTemplateWorkoutModelByWorkoutTemplateWorkoutModelSet(
                workoutTemplateWorkoutModelDocumentSnapshot,
                exerciseModelDocumentSnapshot,
                lastDocumentSnapshot: lastDocumentSnapshot,
                descending: request.descending,
                fieldName: request.fieldName,
                count: request.count);

    List<WorkoutTemplateWorkoutSet> workoutTemplateWorkoutSet =
        workoutTemplateWorkoutSetModelQuerySnapshot.docs.map((e) {
      WorkoutTemplateWorkoutSet workoutTemplateWorkoutSet =
          WorkoutTemplateWorkoutSet.fromJson(e.data().toJson());
      workoutTemplateWorkoutSet = workoutTemplateWorkoutSet.copyWith(id: e.id);
      return workoutTemplateWorkoutSet;
    }).toList();
    return GetWorkoutTemplateWorkoutSetModelResponse(
        size: workoutTemplateWorkoutSetModelQuerySnapshot.size,
        workoutTemplateWorkoutSet: workoutTemplateWorkoutSet);
  }
}
