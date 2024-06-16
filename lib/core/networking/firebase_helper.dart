import 'package:firebase_auth/firebase_auth.dart';

class FirebaseHelper {
  FirebaseAuth auth = FirebaseAuth.instance;
  Future loginUser({required String email, required String password}) async {
    await auth.signInWithEmailAndPassword(email: email, password: password);
  }

  Future registerUser({required String email, required String password}) async {
    await auth.createUserWithEmailAndPassword(email: email, password: password);
  }
}
