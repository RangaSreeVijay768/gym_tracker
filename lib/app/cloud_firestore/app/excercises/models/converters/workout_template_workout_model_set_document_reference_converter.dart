import '../workout_template_workout_model_set.dart';
import '../../repos/workout_template_workout_model_set_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

class WorkoutTemplateWorkoutModelSetDocumentReferenceConverter
    implements
        JsonConverter<DocumentReference<WorkoutTemplateWorkoutModelSet>,
            String> {
  @override
  DocumentReference<WorkoutTemplateWorkoutModelSet> fromJson(String path) =>
      GetIt
          .instance<WorkoutTemplateWorkoutModelSetRepo>()
          .collectionRef
          .doc(path);

  @override
  String toJson(DocumentReference<WorkoutTemplateWorkoutModelSet> docRef) =>
      docRef.path;

  const WorkoutTemplateWorkoutModelSetDocumentReferenceConverter();
}

