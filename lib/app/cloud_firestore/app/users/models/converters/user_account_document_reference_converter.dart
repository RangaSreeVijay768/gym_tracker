import 'package:beebloom_gym_tracker/app/cloud_firestore/app/users/models/user_account_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/users/repo/user_account_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:json_annotation/json_annotation.dart';

class UserAccountDocumentReferenceConverter
    implements JsonConverter<DocumentReference<UserAccountModel>, String> {
  @override
  DocumentReference<UserAccountModel> fromJson(String path) =>
      GetIt.instance<UserAccountModelRepo>().collectionRef.doc(path);

  @override
  String toJson(DocumentReference<UserAccountModel> docRef) => docRef.path;

  const UserAccountDocumentReferenceConverter();
}
