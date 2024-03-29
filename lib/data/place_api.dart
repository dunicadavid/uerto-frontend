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
  })  : assert(auth != null),
        _auth = auth,
        _apiUrl = apiUrl,
        _client = client;

  final FirebaseAuth _auth;
  final String _apiUrl;
  final Client _client;

  Future<Map<String, dynamic>> getPlaces(String filter, String category, double? latitude, double? longitude,
      int? radius, String? sortedBy, int page, int limit) async {
    final String token = await _auth.currentUser!.getIdToken();

    final Map<String, String> requestParams = <String, String>{
      'page': page.toString(),
      'limit': limit.toString(),
      'type': category,
      'filter': filter != '' ? filter : '0',
      'sortedBy': sortedBy ?? '0',
      'latitude': latitude != null ? latitude.toString() : '0',
      'longitude': longitude != null ? longitude.toString() : '0',
      'radius': radius != null ? radius.toString() : '0',
    };

    final Uri uri =
    Uri.https(_apiUrl.split('//')[1], '/places', requestParams);

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
    return body;
  }

  Future<Map<String, dynamic>> getPlacesSearched(String name, int page, int limit) async {
    final String token = await _auth.currentUser!.getIdToken();
    final Map<String, String> requestParams = <String, String>{
      'page': page.toString(),
      'limit': limit.toString(),
    };
    print('page ==================> $page');
    final Uri uri = Uri.https(_apiUrl.split('//')[1], '/places/search=$name', requestParams);

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
    return body;
  }

  Future<Map<String, dynamic>> getPlacesFavourite(int iduser, int page, int limit) async {
    final String token = await _auth.currentUser!.getIdToken();

    final Map<String, String> requestParams = <String, String>{
      'page': page.toString(),
      'limit': limit.toString(),
    };

    final Uri uri =
        Uri.https(_apiUrl.split('//')[1], '/places/favourites-of-user=$iduser', requestParams);

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
    return body;
  }

  Future<List<PlaceShort>> getPlacesRecommended(int iduser, int strategy) async {
    final String token = await _auth.currentUser!.getIdToken();

    final Map<String, String> requestParams = <String, String>{
      'iduser': iduser.toString(),
      'strategy': strategy.toString(),
    };

    final Uri uri =
    Uri.https(_apiUrl.split('//')[1], '/places/recommend', requestParams);

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

    final List<dynamic> places = body['places'] as List<dynamic>;

    return places
        .map((dynamic json) => PlaceShort.fromJson(json))
        .toList();
  }

  Future<Place> getPlaceDetails(int id, int iduser) async {
    final String token = await _auth.currentUser!.getIdToken();

    final Map<String, String> requestParams = <String, String>{'iduser': iduser.toString()};

    final Uri uri = Uri.https(_apiUrl.split('//')[1], '/places/id=$id', requestParams);
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

    return Place.fromJson(body['place']);
  }

  Future<List<PlaceActivity>> getPlaceActivities(int id) async {
    final String token = await _auth.currentUser!.getIdToken();
    final Uri uri = Uri.parse('$_apiUrl/places/id=$id/activity');
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

    final List<dynamic> movies = body['activities'] as List<dynamic>;

    return movies //
        .map((dynamic json) => PlaceActivity.fromJson(json))
        .toList();
  }

  Future<List<PlaceActivityAvailability>> getPlaceActivityAvailability(
      int idactivity, String date, int partySize) async {
    final String token = await _auth.currentUser!.getIdToken();

    final Map<String, String> requestParams = <String, String>{
      'idactivity': idactivity.toString(),
      'date': date,
      'partySize': partySize.toString(),
    };

    final Uri uri = Uri.https(_apiUrl.split('//')[1], '/places/availability', requestParams);
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

    final List<dynamic> availability = body['result'] as List<dynamic>;

    return availability //
        .map((dynamic json) => PlaceActivityAvailability.fromJson(json))
        .toList();
  }

  Future<void> setPlaceFavourite(int iduser, int idplace, int addOrDelete) async {
    final String token = await _auth.currentUser!.getIdToken();
    Uri uri = Uri.https(_apiUrl.split('//')[1],
        addOrDelete == 1 ? '/users/interaction/favourite-place' : '/users/interaction/unfavourite-place');

    final Response response = addOrDelete == 1
        ? await _client.post(
            uri,
            headers: {
              HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
              HttpHeaders.authorizationHeader: 'Bearer $token',
            },
            body: json.encode(<String, dynamic>{
              'idplace': idplace,
              'iduser': iduser,
            }),
          )
        : await _client.delete(
            uri,
            headers: {
              HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
              HttpHeaders.authorizationHeader: 'Bearer $token',
            },
            body: json.encode(<String, dynamic>{
              'idplace': idplace,
              'iduser': iduser,
            }),
          );

    final Map<String, dynamic> body = jsonDecode(response.body) as Map<String, dynamic>;

    if (response.statusCode != 201 && response.statusCode != 200) {
      if (response.statusCode == 405) {
        print(body['message'].toString());
        throw StateError(body['message'].toString());
      } else {
        throw StateError('Something went wrong');
      }
    }
  }
}
