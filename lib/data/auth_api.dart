// File created by
// Dunica David-Gabriel <FLTY>
// on 27/11/2022 18:06:41

import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;


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
  Future<Map<String,dynamic>?> getCurrentUser() async {
    final User? user = _auth.currentUser;

    if (user == null) {
      print('null -- notuser');
      return null;
    }


    final String token = await user.getIdToken();
    print('Token: $token');
    print('Uid: ${_auth.currentUser?.uid}');
    final Uri uri = Uri.https(_apiUrl.split('//')[1], '/users/idauth');
    final Response response = await _client.get(
      uri,
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
        HttpHeaders.authorizationHeader: 'Bearer $token',
      },
    );

    switch (response.statusCode) {
      case 200:
        {
          print('body -- user ok');
          final  Map<String, dynamic> body = jsonDecode(response.body) as Map<String,dynamic>;
          print(body);
          return body;
        }
      case 204:
        print('null -- registerphase2');
        return null;
      case 500:
        {
          print('error');
          final  Map<String, dynamic> body = jsonDecode(response.body) as Map<String,dynamic>;
          final String error = body['message'] as String;
          throw StateError(error);
        }
      default:
        return null;
    }
  }

  /// [ {login} ]  --  logheaza userul si verifica cazurile de nefunctionalitate a serverului
  Future<Map<String,dynamic>?> login(String email, String password) async {

    final AuthCredential credential = EmailAuthProvider.credential(email: email, password: password);
    final UserCredential result = await _auth.signInWithCredential(credential);

    final String? token = await _auth.currentUser?.getIdToken();
    final Uri uri = Uri.parse('$_apiUrl/users/idauth');
    final Response response = await _client.get(
      uri,
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
        HttpHeaders.authorizationHeader: 'Bearer $token',
      },
    );

    switch (response.statusCode) {
      case 200:
        {
          final  Map<String, dynamic> body = jsonDecode(response.body) as Map<String,dynamic>;
          return body;
        }
      case 204:
        return null;
      case 500:
        {
          final  Map<String, dynamic> body = jsonDecode(response.body) as Map<String,dynamic>;
          final String error = body['message'] as String;
          throw StateError(error);
        }
      default:
        return null;
    }
  }

  /// [ {registerPhase1} ]  --  phase1 authentifica in Firebase Userul
  Future<void> registerPhase1(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      print(await _auth.currentUser?.getIdToken());
    } on FirebaseAuthException catch (e) {
      print('error message : ===========> $e');
      rethrow;
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
        ..photoUrl = photoUrl //nefolosit inca
        ..nextStrategy = 0;
    });

    final String? token = await _auth.currentUser?.getIdToken();

    final Uri uri = Uri.parse('$_apiUrl/users/create');

    final Response response = await _client.post(
      uri,
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
        HttpHeaders.authorizationHeader: 'Bearer $token',
      },
      body: json.encode(
          <String, String>{'name': user.fullname, 'email': user.email, 'phone': user.phoneNumber, 'idauth': user.uid}),
    );

    final Map<String, dynamic> body = jsonDecode(response.body) as Map<String, dynamic>;

    if (response.statusCode != 201) {
      if (response.statusCode == 405) {
        throw StateError(body['message'].toString());
      } else {
        throw StateError('Something went wrong');
      }
    }

    final Map<String, dynamic> userRes = body['user'] as Map<String, dynamic>;
    return AppUser.fromJson(userRes);
  }

  /// [ {editProfile} ]  --  modifica datele unui utilizator
  Future<AppUser> editProfile(
      int iduser, String fullname, String phoneNumber, String photoUrl, int nextStrategy) async {
    final AppUser user = AppUser((AppUserBuilder b) {
      b
        ..userId = iduser
        ..uid = _auth.currentUser?.uid
        ..fullname = fullname
        ..email = _auth.currentUser?.email
        ..phoneNumber = phoneNumber
        ..nextStrategy = nextStrategy;
    });

    final String? token = await _auth.currentUser?.getIdToken();

    final Uri uri = Uri.parse('$_apiUrl/users/update');

    final Response response = await _client.put(
      uri,
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
        HttpHeaders.authorizationHeader: 'Bearer $token',
      },
      body: json.encode(<String, String>{
        'iduser': user.userId.toString(),
        'name': user.fullname,
        'phone': user.phoneNumber,
      }),
    );

    final Map<String, dynamic> body = jsonDecode(response.body) as Map<String, dynamic>;

    if (response.statusCode != 201) {
      if (response.statusCode == 405) {
        throw StateError(body['message'].toString());
      } else {
        throw StateError('Something went wrong');
      }
    }

    return user;
  }

  /// [ {editProfileImage} ]  --  modifica imaginea de profil a unui utilizator
  Future<String> editProfileImage(File imagePath, int iduser) async {

    final String? token = await _auth.currentUser?.getIdToken();

    final Map<String, String> requestParams = <String, String>{
      'iduser': iduser.toString()
    };

    final Uri uri =
    Uri.https(_apiUrl.split('//')[1], '/users/update/profile-image', requestParams);

    final MultipartRequest request = http.MultipartRequest('PUT', uri);

    final MultipartFile image = await http.MultipartFile.fromPath('image', imagePath.path);
    request.files.add(image);
    request.headers['Authorization'] = 'Bearer $token';

    final StreamedResponse response = await request.send();
    final String responseBody = await response.stream.bytesToString();
    final Map<String, dynamic> body = jsonDecode(responseBody) as Map<String, dynamic>;

    if (response.statusCode != 201) {
      if (response.statusCode == 405) {
        throw StateError(body['message'].toString());
      } else {
        throw StateError('Something went wrong');
      }
    }

    return body['photoUrl'].toString();
  }

  /// [ {signOut} ]  --  functia de signOut a userului legata la authentificarea din FIREBASE
  Future<void> signOut() async {
    await _auth.signOut();
  }

  /// [ {verifyEmail} ]  --  functia de verificare a integritatii emailului legata la authentificarea din FIREBASE
  Future<void> verifyEmail() async {
    if (_auth.currentUser != null && !_auth.currentUser!.emailVerified) {
      await _auth.currentUser!.sendEmailVerification();
    }
  }

  /// [ {verifyEmail} ]  --  functia de schimbare a parolei pentru authentificarea din FIREBASE
  Future<void> resetPassword(String email) async {
    return _auth.sendPasswordResetEmail(email: email);
  }

  /// [ {setRecommenderStrategy} ]  --  functia de setare a urmatoarei strategii de MachineLearning.
  Future<void> setRecommenderStrategy(int iduser, int strategy) async {
    final String token = await _auth.currentUser!.getIdToken();

    final Uri uri = Uri.https(_apiUrl.split('//')[1], '/users/update/strategy');

    final Response response = await _client.put(
      uri,
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
        HttpHeaders.authorizationHeader: 'Bearer $token',
      },
      body: json.encode(<String, String>{
        'iduser': iduser.toString(),
        'strategy': strategy.toString(),
      }),
    );

    final Map<String, dynamic> body = jsonDecode(response.body) as Map<String, dynamic>;

    if (response.statusCode != 201) {
      throw StateError(body['message'].toString());
    }
  }
}
