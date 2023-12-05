import 'package:beebloom_gym_tracker/app/cloud_firestore/core/models/base_firestore_entity.dart';
import 'package:beebloom_gym_tracker/app/cloud_firestore/core/repos/abstract_cloud_firestore_repo.dart';
import 'package:beebloom_gym_tracker/app/core/utils/app_date_time_utils.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class AbstractCloudFirestoreSubCollectionRepo<
    T extends BaseFirestoreEntity,
    B extends BaseFirestoreEntity> extends AbstractCloudFirestoreRepo<T> {
  late final CollectionReference<T> collectionRef;

  CollectionReference<T> getCollectionReference() {
    throw 'invalid access for collection reference in subcollection repo ${this.runtimeType.toString()}';
  }

  String getCollectionName();

  AbstractCloudFirestoreSubCollectionRepo(super.cloudFirestoreClient) {
    this.collectionRef = getCollectionReference();
  }

  Future<DocumentReference<T>> saveSubCollection(
      T object, DocumentReference<B> parentDoc) {
    object = object.copyWith(
        createdTime: AppDateTimeUtils.getCurrentTimeOfDay(),
        lastUpdatedTime: AppDateTimeUtils.getCurrentTimeOfDay()) as T;
    CollectionReference<T> collectionReference =
        getSubCollectionReference(parentDoc);
    return collectionReference.add(object);
  }

  CollectionReference<T> getSubCollectionReference(
      DocumentReference<B> parentDoc) {
    CollectionReference<T> collectionReference = parentDoc
        .collection(getCollectionName())
        .withConverter(
            fromFirestore: getFromFirestore(), toFirestore: getToFirestore());
    return collectionReference;
  }


  Future<DocumentReference<T>> getDocumentReference(String id) {
    return Future.value(
        this.collectionRef.doc('${getCollectionName()}/${id})'));
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
}
