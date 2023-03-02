// File created by
// Dunica David-Gabriel <FLTY>
// on 02/03/2023 16:13:56

import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart';
import 'package:uerto/models/index.dart';



class ReservationApi {

  const ReservationApi({
    required FirebaseAuth auth,
    required String apiUrl,
    required Client client,
  }) : assert(auth != null),
        _auth = auth,
        _apiUrl = apiUrl,
        _client = client;

  final FirebaseAuth _auth;
  final String _apiUrl;
  final Client _client;

  Future<void> createReservation(int idplace, int idactivity, int idactivitySeating, int iduser, String date, String hour, int party_size) async {

    final String? token = await _auth.currentUser?.getIdToken();

    final Uri uri = Uri.https(_apiUrl.substring(_apiUrl.length - 18),'/reservations/create');
    final Response response = await _client.post(uri,
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
        HttpHeaders.authorizationHeader : 'Bearer $token',
      },
      body: json.encode(<String, dynamic>{
        'idplace' : idplace,
        'idactivity' : idactivity,
        'idactivitySeating' : idactivitySeating,
        'iduser' : iduser,
        'date' : date,
        'hour' : hour,
        'party_size' : party_size,
      }),
    );

    final  Map<String, dynamic> body = jsonDecode(response.body) as Map<String,dynamic>;

    if (response.statusCode != 201) {
      if (response.statusCode == 406 || response.statusCode == 500) {
        print(body['message'].toString());
        throw StateError(body['message'].toString());
      }
      else {
        throw StateError('Something went wrong');
      }
    }
  }

}