import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/models/workout_template_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/models/workout_template_workout_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/repos/workout_template_model_repo.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/repos/workout_template_workout_model_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

class WorkoutTemplateModelWorkoutDocumentReferenceConverter
    implements JsonConverter<DocumentReference<WorkoutTemplateWorkoutModel>, String> {
  @override
  DocumentReference<WorkoutTemplateWorkoutModel> fromJson(String path) =>
      GetIt.instance<WorkoutTemplateWorkoutModelRepo>()
          .getCollectionReference()
          .doc(path);

  @override
  String toJson(DocumentReference<WorkoutTemplateWorkoutModel> docRef) => docRef.path;

  const WorkoutTemplateModelWorkoutDocumentReferenceConverter();
}
