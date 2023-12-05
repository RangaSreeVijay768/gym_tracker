import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@singleton
class FirebaseAuthClient {
  late FirebaseAuth firebaseAuth;

  FirebaseAuthClient() {
    firebaseAuth = FirebaseAuth.instance;
  }

  Future<UserCredential> signInAnonymously() {
    return this.firebaseAuth.signInAnonymously();
  }

  Future<void> signOut(){
    return this.firebaseAuth.signOut();
  }
}
