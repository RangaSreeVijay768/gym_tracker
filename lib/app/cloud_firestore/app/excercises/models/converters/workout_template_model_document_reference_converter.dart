import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/models/workout_template_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/repos/workout_template_model_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

class WorkoutTemplateModelDocumentReferenceConverter
    implements JsonConverter<DocumentReference<WorkoutTemplateModel>, String> {
  @override
  DocumentReference<WorkoutTemplateModel> fromJson(String path) =>
      GetIt.instance<WorkoutTemplateModelRepo>()
          .getCollectionReference()
          .doc(path);

  @override
  String toJson(DocumentReference<WorkoutTemplateModel> docRef) => docRef.path;

  const WorkoutTemplateModelDocumentReferenceConverter();
}
