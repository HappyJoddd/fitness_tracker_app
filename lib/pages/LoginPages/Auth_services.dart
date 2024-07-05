import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  final _auth = FirebaseAuth.instance;

  Future<User?> createUserWithEmailAndPassward(
      String email, String password) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      log("Something Went Wrong");
    }
    return null;
  }

  Future<User?> loginUserWithEmailAndPassward(
      String email, String password) async {
    try {
      final credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      log("Something Went Wrong");
    }
    return null;
  }

  Future<void> signout() async {
    try {
      _auth.signOut();
    } catch (e) {
      log("Something Went Wrong");
    }
  }
}
