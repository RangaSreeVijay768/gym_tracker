import 'package:beebloom_gym_tracker/app/cloud_firestore/app/sessions/models/gym_session_exercise_model.dart';

import '../gym_session_exercise_model.dart';
import '../../repos/gym_session_exercise_model_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

class GymSessionExerciseModelDocumentReferenceConverter
    implements
        JsonConverter<DocumentReference<GymSessionExerciseModel>, String> {
  @override
  DocumentReference<GymSessionExerciseModel> fromJson(String path) =>
      GetIt
          .instance<GymSessionExerciseModelRepo>()
          .collectionRef
          .doc(path);

  @override
  String toJson(DocumentReference<GymSessionExerciseModel> docRef) =>
      docRef.path;

  const GymSessionExerciseModelDocumentReferenceConverter();
}

