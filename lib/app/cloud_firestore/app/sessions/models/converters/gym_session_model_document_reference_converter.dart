import '../gym_session_model.dart';
import '../../repos/gym_session_model_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

class GymSessionModelDocumentReferenceConverter
    implements JsonConverter<DocumentReference<GymSessionModel>, String> {
  @override
  DocumentReference<GymSessionModel> fromJson(String path) =>
      GetIt
          .instance<GymSessionModelRepo>()
          .collectionRef
          .doc(path);

  @override
  String toJson(DocumentReference<GymSessionModel> docRef) => docRef.path;

  const GymSessionModelDocumentReferenceConverter();
}

