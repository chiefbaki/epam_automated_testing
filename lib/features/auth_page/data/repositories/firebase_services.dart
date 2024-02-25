import 'package:firebase_auth/firebase_auth.dart';

class FirebaseServise {
  final FirebaseAuth auth = FirebaseAuth.instance;
  Future<UserCredential> makeSignIn(
      {required String email, required String password}) async {
    return auth.signInWithEmailAndPassword(email: email, password: password);
  }

  Future<UserCredential> makeSignUp(
      {required String email, required String password}) async {
    return auth.createUserWithEmailAndPassword(
        email: email, password: password);
  }

  Future<void> makeReset({required String email}) async {
    auth.sendPasswordResetEmail(email: email);
  }
}
