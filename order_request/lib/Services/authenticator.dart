import 'package:firebase_auth/firebase_auth.dart';

class Authenticator {
final FirebaseAuth _auth = FirebaseAuth.instance;

  Future login(String email, String password) async {
    try {
      UserCredential result =
        await _auth.signInWithEmailAndPassword(email: email, password: password);
        User user = result.user!;
        return user;
    } catch(error) {
        print(error.toString());
        return null;
    }
  }
}