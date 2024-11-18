import 'package:commons/modules.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  loginWithEmail(String email, String password) async {
    try {
      final UserCredential credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      await SecureStorageService()
          .write(SecureStorageKeys.uid, credential.user!.uid);
      return credential.user;
    } on FirebaseAuthException catch (e) {
      return e;
    }
  }
}
