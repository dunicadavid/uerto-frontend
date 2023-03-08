// File created by
// Dunica David-Gabriel <FLTY>
// on 27/11/2022 18:09:13

import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart';
import 'package:uerto/models/index.dart';


class PlaceApi {

  const PlaceApi({
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

  Future<Map<String,dynamic>> getPlaces(String filter, String category, int page, int limit) async {

    final String token = await _auth.currentUser!.getIdToken();
    final Uri uri = Uri.parse('$_apiUrl/places?page=$page&limit=$limit&type=$category&$filter');

    final Response response = await _client.get(uri,
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
        HttpHeaders.authorizationHeader : 'Bearer $token',
      },
    );

    final  Map<String, dynamic> body = jsonDecode(response.body) as Map<String,dynamic>;
    print(body);
    if(response.statusCode != 200) {
      throw StateError(body['message'].toString());
    }
    return body;
  }

  Future<Place> getPlaceDetails(int id, int iduser) async {
    final String token = await _auth.currentUser!.getIdToken();

    final Map<String, String> requestParams = <String, String>{
      'iduser': iduser.toString()
    };

    final Uri uri = Uri.https(_apiUrl.substring(_apiUrl.length - 18),'/places/id=$id',requestParams);
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

    return  Place.fromJson(body['place']);
  }

  Future<List<PlaceActivity>> getPlaceActivities(int id) async {
    final String token = await _auth.currentUser!.getIdToken();
    final Uri uri = Uri.parse('$_apiUrl/places/id=$id/activity');
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

    final List<dynamic> movies = body['activities'] as List<dynamic>;

    return movies //
        .map((dynamic json) => PlaceActivity.fromJson(json))
        .toList();
  }

  Future<List<PlaceActivityAvailability>> getPlaceActivityAvailability(int idactivity, String date, int partySize) async {
    final String token = await _auth.currentUser!.getIdToken();

    final Map<String, String> requestParams = <String, String>{
      'idactivity': idactivity.toString(),
      'date': date,
      'partySize': partySize.toString(),
    };

    final Uri uri = Uri.https(_apiUrl.substring(_apiUrl.length - 18),'/places/availability',requestParams);
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

    final List<dynamic> availability = body['result'] as List<dynamic>;

    return availability //
        .map((dynamic json) => PlaceActivityAvailability.fromJson(json))
        .toList();
  }

}