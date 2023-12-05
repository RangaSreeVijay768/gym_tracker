import 'dart:collection';

import 'package:beebloom_gym_tracker/app/cloud_firestore/app/sessions/models/gym_session_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/users/models/user_account_model.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/core/repos/abstract_cloud_firestore_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@singleton
class GymSessionModelRepo extends AbstractCloudFirestoreRepo<GymSessionModel> {
  Future<QuerySnapshot<GymSessionModel>> getAllGymSessionModels() {
    return this.collectionRef.get();
  }

  GymSessionModelRepo(super.cloudFirestoreClient);

  @override
  String getCollectionName() {
    return 'gym_session_models';
  }

  Future<QuerySnapshot<GymSessionModel>>
      getAllGymSessionModelsByUserAccountModel(
          DocumentReference<UserAccountModel> userAccountModelDocumentReference,
          {DocumentSnapshot<GymSessionModel>? lastDocumentSnapshot,
          num? count,
          String? fieldName,
          bool? descending}) {
    Query<GymSessionModel> query = getCollectionReference();

    if (userAccountModelDocumentReference != null) {
      query=query.where('user_account_model_document_reference',
          isEqualTo: userAccountModelDocumentReference.id);
    }

    query = setLimits(query, documentSnapshot: lastDocumentSnapshot);
    query = setOrder(query, fieldName, descending: descending);

    return query.get();
  }

  @override
  FromFirestore<GymSessionModel> getFromFirestore() {
    return (value, options) =>
        GymSessionModel.fromJson(value.data() ?? HashMap());
  }

  @override
  ToFirestore<GymSessionModel> getToFirestore() {
    return (value, options) => value.toJson();
  }
}
