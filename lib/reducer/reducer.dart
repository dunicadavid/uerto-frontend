// File created by
// Dunica David-Gabriel <FLTY>
// on 27/11/2022 18:01:40

import 'package:redux/redux.dart';

import '../actions/index.dart';
import '../models/index.dart';


Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
      (AppState state, dynamic action) {
    print(action);
    return state;
  },

  TypedReducer<AppState, InitializeAppSuccessful>(_initializeAppSuccessful),
  TypedReducer<AppState, InitializeAppError>(_initializeAppError),
  TypedReducer<AppState, RegisterPhase2Successful>(_registerPhase2Successful),
  TypedReducer<AppState, LoginSuccessful>(_loginSuccessful),
  TypedReducer<AppState, LoginError>(_loginError),
  TypedReducer<AppState, SignoutSuccessful>(_signOutSuccessful),

  TypedReducer<AppState, GetPlacesSuccessful>(_getPlacesSuccessful),
  TypedReducer<AppState, GetPlaceDetailsSuccessful>(_getPlaceDetailsSuccessful),
  TypedReducer<AppState, DeletePlaces$>(_deletePlaces),

]);

AppState _initializeAppSuccessful(AppState state, InitializeAppSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b.user = action.user?.toBuilder();
    b.isServerWorking = true;
  });
}

AppState _initializeAppError(AppState state, InitializeAppError action) {
  return state.rebuild((AppStateBuilder b) {
    b.isServerWorking = false;
  });
}

AppState _registerPhase2Successful(AppState state, RegisterPhase2Successful action) {
  return state.rebuild((AppStateBuilder b) => b.user = action.user?.toBuilder());
}

AppState _loginSuccessful(AppState state, LoginSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b.user = action.user?.toBuilder();
    b.isServerWorking = true;
  });
}

AppState _loginError(AppState state, LoginError action) {
  return state.rebuild((AppStateBuilder b) {
    b.isServerWorking = false;
  });
}

AppState _signOutSuccessful(AppState state, SignoutSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b.user = null;
  });
}
AppState _getPlacesSuccessful(AppState state, GetPlacesSuccessful action) {
  final List<dynamic> places = action.body['results'] as List<dynamic>;
  return state.rebuild((AppStateBuilder b) {
    b
      ..listOfPlaces.addAll(places.map((dynamic json) => PlaceShort.fromJson(json)).toList())
      ..listOfPlacesNextPage = action.body.containsKey('next') ? b.listOfPlacesNextPage! + 1 : 0;
  });
}

AppState _getPlaceDetailsSuccessful(AppState state, GetPlaceDetailsSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b.placeDetails = action.place.toBuilder();
  });
}


AppState _deletePlaces(AppState state, DeletePlaces$ action) {
  return state.rebuild((AppStateBuilder b) {
    b..listOfPlacesNextPage = 1
        ..listOfPlaces.clear();
  });
}




