// File created by
// Dunica David-Gabriel <FLTY>
// on 27/11/2022 18:00:00

import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

import '../actions/index.dart';
import '../data/auth_api.dart';
import '../data/place_api.dart';
import '../models/index.dart';

class AppEpics {
  const AppEpics({required AuthApi authApi, required PlaceApi placeApi})
      : _authApi = authApi,
        _placeApi = placeApi;

  final AuthApi _authApi;
  final PlaceApi _placeApi;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, InitializeAppStart>(_initializeApp),
      TypedEpic<AppState, RegisterPhase1Start>(_registerPhase1),
      TypedEpic<AppState, RegisterPhase2Start>(_registerPhase2),
      TypedEpic<AppState, LoginStart>(_login),
      TypedEpic<AppState, SignoutStart>(_signOut),
      TypedEpic<AppState, EmailVerifyStart>(_verifyEmail),

      TypedEpic<AppState, GetPlacesStart>(_getPlaces),
      TypedEpic<AppState, GetPlaceDetailsStart>(_getPlaceDetails),
    ]);
  }

  Stream<AppAction> _initializeApp(Stream<InitializeAppStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((InitializeAppStart action) => _authApi.getCurrentUser())
        .map((AppUser? user) => InitializeApp.successful(user))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => InitializeApp.error(error, stackTrace));
  }

  Stream<AppAction> _registerPhase1(Stream<RegisterPhase1Start> actions, EpicStore<AppState> store) {
    return actions.flatMap((RegisterPhase1Start action) => Stream<void>.value(null)
        .asyncMap((_) => _authApi.registerPhase1(action.email, action.password))
        .map((_) => const RegisterPhase1.successful())
        .onErrorReturnWith((Object error, StackTrace stackTrace) => RegisterPhase1.error(error, stackTrace))
        .doOnData(action.result));
  }

  Stream<AppAction> _registerPhase2(Stream<RegisterPhase2Start> actions, EpicStore<AppState> store) {
    return actions.flatMap((RegisterPhase2Start action) => Stream<void>.value(null)
        .asyncMap((_) => _authApi.registerPhase2(action.fullname, action.phoneNumber, action.photoUrl))
        .map((AppUser? user) => RegisterPhase2.successful(user))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => RegisterPhase2.error(error, stackTrace))
        .doOnData(action.result));
  }

  Stream<AppAction> _login(Stream<LoginStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((LoginStart action) => Stream<void>.value(null)
        .asyncMap((_) => _authApi.login(action.email, action.password))
        .map((AppUser? user) => Login.successful(user))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => Login.error(error, stackTrace))
        .doOnData(action.result));
  }

  Stream<AppAction> _signOut(Stream<SignoutStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((SignoutStart action) => _authApi.signOut())
        .map((_) => const Signout.successful())
        .onErrorReturnWith((Object error, StackTrace stackTrace) => Signout.error(error, stackTrace));
  }

  Stream<AppAction> _verifyEmail(Stream<EmailVerifyStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((EmailVerifyStart action) => _authApi.verifyEmail())
        .map((_) => const EmailVerify.successful())
        .onErrorReturnWith((Object error, StackTrace stackTrace) => EmailVerify.error(error, stackTrace));
  }

  Stream<AppAction> _getPlaces(Stream<GetPlacesStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetPlacesStart action) => Stream<void>.value(null)
        .asyncMap((_) => _placeApi.getPlaces(action.filter,store.state.listOfPlacesNextPage,5))
        .map((Map<String,dynamic> body) => GetPlaces.successful(body))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetPlaces.error(error, stackTrace))
        .doOnData(action.result));
  }

  Stream<AppAction> _getPlaceDetails(Stream<GetPlaceDetailsStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetPlaceDetailsStart action) => Stream<void>.value(null)
        .asyncMap((_) => _placeApi.getPlaceDetails(action.idplace))
        .map((Place place) => GetPlaceDetails.successful(place))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetPlaceDetails.error(error, stackTrace))
        .doOnData(action.result));
  }
}
