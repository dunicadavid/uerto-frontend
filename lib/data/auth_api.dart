// File created by
// Dunica David-Gabriel <FLTY>
// on 27/11/2022 18:06:41

import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../models/index.dart';


class AuthApi {
  ///auth api
  const AuthApi({
    required FirebaseAuth auth,
  })  : assert(auth != null),
        _auth = auth;

  final FirebaseAuth _auth;


  Future<AppUser?> getCurrentUser() async {
    final User? user = _auth.currentUser;
    if (user == null) {
      return null;
    }

    ///get user info from db
    return AppUser.fromJson({'uid' : 'asd23f2f23r34fvb435' , 'fullname' : 'Dunica David', 'email' : 'dgdunica@yahoo.com', 'phoneNumber' : '0732596030'});
  }

  Future<AppUser> login(String email, String password) async {
    UserCredential result;

    final AuthCredential credential = EmailAuthProvider.credential(email: email, password: password);
    result = await _auth.signInWithCredential(credential);
    ///get user info from db
    return AppUser.fromJson({'uid' : 'asd23f2f23r34fvb435' , 'fullname' : 'Dunica David', 'email' : 'dgdunica@yahoo.com', 'phoneNumber' : '0732596030'});
  }

  Future<AppUser> register(String email, String password, String fullName, String phoneNumber) async {
    final UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);

    final AppUser user = AppUser((AppUserBuilder b) {
      b
        ..uid = result.user!.uid
        ..email = email
        ..fullname = fullName
        ..phoneNumber = phoneNumber;
    });

    ///post user info in db
    return user;
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

}