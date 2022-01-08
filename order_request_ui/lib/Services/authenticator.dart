import 'package:firebase_auth/firebase_auth.dart';
import 'package:order_request_ui/Models/RequestUser.dart';

import 'database.dart';

class Authenticator {
final FirebaseAuth _auth = FirebaseAuth.instance;
final Database _database = Database();


RequestUser? _convertToFirebaseUser(User? firebaseUser) {
  return firebaseUser != null ? RequestUser(uid: firebaseUser.uid) : null;
}


Stream<RequestUser?> get user {
  return _auth.authStateChanges().map(_convertToFirebaseUser);}

  Future login(String email, String password) async {
    try {
      UserCredential result =
        await _auth.signInWithEmailAndPassword
          (email: email, password: password);
        User user = result.user!;
        return user;
    } catch(error) {
        print(error.toString());
        return null;
    }
  }

  Future register(
      String firstName,
      String lastName,
      String email,
      String password) async {
    try {
      UserCredential result =
          await _auth.createUserWithEmailAndPassword
            (email: email, password: password);
      User user = result.user!;
      _database.addUser(RequestUser(uid: user.uid, firstName: firstName,
          lastName: lastName, email: email));
      return user;
    } catch(error) {
        print(error.toString());
        return null;
    }
  }

  Future logout() async {
    try {
      return await _auth.signOut();
    } catch(error) {
      print(error.toString());
      return null;
    }
  }
}