import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/models/exercise_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/repos/exercise_model_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

class ExerciseModelDocumentReferenceConverter
    implements JsonConverter<DocumentReference<ExerciseModel>, String> {
  @override
  DocumentReference<ExerciseModel> fromJson(String path) =>
      GetIt.instance<ExerciseModelRepo>().collectionRef.doc(path);

  @override
  String toJson(DocumentReference<ExerciseModel> docRef) => docRef.path;

  const ExerciseModelDocumentReferenceConverter();
}

