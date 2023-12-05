import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@singleton
class CloudFirestoreClient {
  late FirebaseFirestore db;

  CloudFirestoreClient() {
    db = FirebaseFirestore.instance;
    db.settings = const Settings(
      persistenceEnabled: true,
      cacheSizeBytes: Settings.CACHE_SIZE_UNLIMITED,
    );
  }
}
