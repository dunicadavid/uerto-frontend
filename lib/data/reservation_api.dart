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

  Future<void> createReservation(int idplace, int idactivity, int idactivitySeating, int iduser, String date, String hour, int partySize) async {

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
        'partySize' : partySize,
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

  Future<void> deleteReservation(int idreservation) async {

    final String? token = await _auth.currentUser?.getIdToken();

    final Map<String, String> requestParams = <String, String>{
      'idreservation' : idreservation.toString(),
    };

    final Uri uri = Uri.https(_apiUrl.substring(_apiUrl.length - 18), '/reservations/delete', requestParams);

    final Response response = await _client.delete(uri,
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
        HttpHeaders.authorizationHeader : 'Bearer $token',
      },
    );

    final  Map<String, dynamic> body = jsonDecode(response.body) as Map<String,dynamic>;

    if (response.statusCode != 200) {
        print(body['message'].toString());
        throw StateError(body['message'].toString());
    }
  }

  Future<Map<String,dynamic>> getReservationsFuture(int iduser, int page, int limit) async {
    final String? token = await _auth.currentUser?.getIdToken();

    final Map<String, String> requestParams = <String, String>{
      'iduser': iduser.toString(),
      'time': 'future',
      'page': page.toString(),
      'limit': limit.toString(),
    };

    final Uri uri = Uri.https(_apiUrl.substring(_apiUrl.length - 18),'/reservations',requestParams);
    final Response response = await _client.get(uri,
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
        HttpHeaders.authorizationHeader : 'Bearer $token',
      },
    );

    final  Map<String, dynamic> body = jsonDecode(response.body) as Map<String,dynamic>;

    if(response.statusCode != 200) {
      throw StateError(body['message'].toString());
    }

    return body;
  }

  Future<Map<String,dynamic>> getReservationsPrevious(int iduser, int page, int limit) async {
    final String? token = await _auth.currentUser?.getIdToken();

    final Map<String, String> requestParams = <String, String>{
      'iduser': iduser.toString(),
      'time': 'previous',
      'page': page.toString(),
      'limit': limit.toString(),
    };

    final Uri uri = Uri.https(_apiUrl.substring(_apiUrl.length - 18),'/reservations',requestParams);
    final Response response = await _client.get(uri,
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
        HttpHeaders.authorizationHeader : 'Bearer $token',
      },
    );

    final  Map<String, dynamic> body = jsonDecode(response.body) as Map<String,dynamic>;

    if(response.statusCode != 200) {
      throw StateError(body['message'].toString());
    }

    return body;
  }

  Future<List<RateRequest>> getReservationsRateRequest(int iduser) async {
    final String token = await _auth.currentUser!.getIdToken();

    final Map<String, String> requestParams = <String, String>{
      'iduser': iduser.toString(),
    };

    final Uri uri =
    Uri.https(_apiUrl.substring(_apiUrl.length - 18), '/users/interaction/rate-requests', requestParams);

    final Response response = await _client.get(
      uri,
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
        HttpHeaders.authorizationHeader: 'Bearer $token',
      },
    );

    final Map<String, dynamic> body = jsonDecode(response.body) as Map<String, dynamic>;

    if (response.statusCode != 200) {
      throw StateError(body['message'].toString());
    }

    final List<dynamic> ratings = body['ratingRequests'] as List<dynamic>;

    return ratings
        .map((dynamic json) => RateRequest.fromJson(json))
        .toList();
  }

}