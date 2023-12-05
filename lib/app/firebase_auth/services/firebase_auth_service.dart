import 'package:beebloom_gym_tracker/app/firebase_auth/core/firebase_auth_client.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@singleton
class FirebaseAuthService {
  FirebaseAuthClient firebaseAuthClient;

  FirebaseAuthService(this.firebaseAuthClient);

  Future<UserCredential> signInAnonymously() {
    return firebaseAuthClient.signInAnonymously();
  }

  Future<void> signOut() {
    return firebaseAuthClient.signOut();
  }
}
