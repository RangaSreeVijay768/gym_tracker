import '../gym_session_exercise_set_model.dart';
import '../../repos/gym_session_exercise_set_model_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

class GymSessionExerciseSetModelDocumentReferenceConverter
    implements
        JsonConverter<DocumentReference<GymSessionExerciseSetModel>, String> {
  @override
  DocumentReference<GymSessionExerciseSetModel> fromJson(String path) =>
      GetIt
          .instance<GymSessionExerciseSetModelRepo>()
          .collectionRef
          .doc(path);

  @override
  String toJson(DocumentReference<GymSessionExerciseSetModel> docRef) =>
      docRef.path;

  const GymSessionExerciseSetModelDocumentReferenceConverter();
}

