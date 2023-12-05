import 'package:beebloom_gym_tracker/app/cloud_firestore/core/client/cloud_firestore_client.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/core/models/base_firestore_entity.dart';
import 'package:beebloom_gym_tracker/app/core/utils/app_date_time_utils.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class AbstractCloudFirestoreRepo<T extends BaseFirestoreEntity> {
  CloudFirestoreClient cloudFirestoreClient;
  late final CollectionReference<T> collectionRef;

  CollectionReference<T> getCollectionReference() {
    return cloudFirestoreClient.db
        .collection(getCollectionName())
        .withConverter(
            fromFirestore: getFromFirestore(), toFirestore: getToFirestore());
  }

  String getCollectionName();

  AbstractCloudFirestoreRepo(this.cloudFirestoreClient) {
    this.collectionRef = getCollectionReference();
  }

  Future<DocumentReference<T>> save(T object) {
    object = object.copyWith(
        createdTime: AppDateTimeUtils.getCurrentTimeOfDay(),
        lastUpdatedTime: AppDateTimeUtils.getCurrentTimeOfDay()) as T;
    return this.collectionRef.add(object);
  }

  Future<DocumentReference<T>> getDocumentReference(String id) {
    return Future.value(
        this.collectionRef.doc('${id}'));
  }

  Future<DocumentSnapshot<T>> getDocumentSnapshot(String id) async {
    DocumentReference<T> documentReference = await getDocumentReference(id);
    return documentReference.get();
  }

  Future<void> delete(DocumentReference<T> documentReference) {
    return documentReference.delete();
  }

  Future<void> update(DocumentReference<T> object) {
    return object
        .update({'lastUpdatedTime': AppDateTimeUtils.getCurrentTimeOfDay()});
  }

  setLimits(Query<T> query,
      {DocumentSnapshot<T>? documentSnapshot, int? count}) {
    if (documentSnapshot != null) {
      query = query.startAfterDocument(documentSnapshot!);
    }
    if (count != null) {
      query = query.limit(count!);
    }
    return query;
  }

  setOrder(Query<T> query, String? fieldName, {bool? descending}) {
    if (fieldName != null) {
      return query.orderBy(fieldName, descending: descending ?? false);
    }
    return query;
  }

  FromFirestore<T> getFromFirestore();

  ToFirestore<T> getToFirestore();
}
