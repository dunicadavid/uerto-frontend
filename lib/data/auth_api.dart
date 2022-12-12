// File created by
// Dunica David-Gabriel <FLTY>
// on 27/11/2022 18:06:41

import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart';

import '../models/index.dart';


class AuthApi {
  ///auth api
  const AuthApi({
    required FirebaseAuth auth,
    required String apiUrl,
    required Client client,
  })  : assert(auth != null),
        _auth = auth,
        _apiUrl = apiUrl,
        _client = client;

  final FirebaseAuth _auth;
  final String _apiUrl;
  final Client _client;


  /// [ {getCurrentUser} ]  --  verifica daca userul este logat la intrarea in aplicatie si ia datele sale din db
  Future<AppUser?> getCurrentUser() async {
    final User? user = _auth.currentUser;

    if (user == null) {
      return null;
    }

    Response? response;
    final String token = await user.getIdToken();
    try {
      final Uri uri = Uri.parse('$_apiUrl/users/authid=${_auth.currentUser?.uid}');
      response = await _client.get(uri,
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
          HttpHeaders.authorizationHeader : 'Bearer $token',
        },
      );

      if (response.statusCode != 200 && response.statusCode != 204) {
        print('status code : --------------> ${response.statusCode}');
        throw StateError(response.body);
      }
      return AppUser.fromJson(json.decode(response.body));
    }  catch (e) {
      return null;
    }


  }


  /// [ {login} ]  --  logheaza userul si verifica cazurile de nefunctionalitate a serverului
  Future<AppUser?> login(String email, String password) async {
    UserCredential result;
    Response? response;
    final AuthCredential credential = EmailAuthProvider.credential(email: email, password: password);
    result = await _auth.signInWithCredential(credential);

    final String? token = await _auth.currentUser?.getIdToken();

    try {
      final Uri uri = Uri.parse('$_apiUrl/users/authid=${_auth.currentUser?.uid}');
      response = await _client.get(uri,
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
          HttpHeaders.authorizationHeader : 'Bearer $token',
        },
      );
      if (response.statusCode != 200 && response.statusCode != 204) {
        print('status code : --------------> ${response.statusCode}');
        throw StateError(response.body);
      }
      return AppUser.fromJson(json.decode(response.body));
    }  catch (e) {
      return null;
    }


  }


  /// [ {registerPhase1} ]  --  phase1 authentifica in Firebase Userul
  Future<void> registerPhase1(String email, String password) async {
    UserCredential result;

    try {
      result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        final AuthCredential credential = EmailAuthProvider.credential(email: email, password: password);
        result = await _auth.signInWithCredential(credential);
      } else {
        rethrow;
      }
    }

  }


  /// [ {registerPhase2} ]  --  phase2 authentifica in mySQL Userul
  Future<AppUser?> registerPhase2(String fullname, String phoneNumber, String photoUrl) async {
    final AppUser user = AppUser((AppUserBuilder b) {
      b
        ..userId = 0
        ..uid = _auth.currentUser?.uid
        ..fullname = fullname
        ..email = _auth.currentUser?.email
        ..phoneNumber = phoneNumber
        ..photoUrl = photoUrl; //nefolosit inca
    });

    final String? token = await _auth.currentUser?.getIdToken();

    final Uri uri = Uri.parse('$_apiUrl/users/create');

    final Response response = await _client.post(uri,
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
        HttpHeaders.authorizationHeader : 'Bearer $token',
      },
      body: json.encode(<String, String>{
        'name' : user.fullname,
        'email' : user.email,
        'phone' : user.phoneNumber,
        'authId' : user.uid
      }),
    );

    final  Map<String, dynamic> body = jsonDecode(response.body) as Map<String,dynamic>;

    if (response.statusCode != 201) {
      if (response.statusCode == 405) {
        throw StateError(body['message'].toString());
      }
      else {
        throw StateError('Something went wrong');
      }
    }

    final  Map<String, dynamic> userRes = body['user'] as Map<String,dynamic>;
    return AppUser.fromJson(userRes);


  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  Future<void> verifyEmail() async {
    if (_auth.currentUser != null && !_auth.currentUser!.emailVerified) {
      await _auth.currentUser!.sendEmailVerification();
    }
  }

}