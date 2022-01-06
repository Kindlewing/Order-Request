import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:order_request_ui/Models/RequestUser.dart';

class Authenticator {
final FirebaseAuth _auth = FirebaseAuth.instance;

RequestUser? _convertToFirebaseUser(User? firebaseUser) {
  return firebaseUser != null ? RequestUser(uid: firebaseUser.uid) : null;
}


Stream<RequestUser?> get user {
  return _auth.authStateChanges().map(_convertToFirebaseUser);
}

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

  Future register(String email, String password) async {
    try {
      UserCredential result =
          await _auth.createUserWithEmailAndPassword
            (email: email, password: password);
      User user = result.user!;
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