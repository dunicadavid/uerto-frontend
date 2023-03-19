// File created by
// Dunica David-Gabriel <FLTY>
// on 27/11/2022 18:00:00

import 'package:geolocator/geolocator.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

import '../actions/index.dart';
import '../data/auth_api.dart';
import '../data/place_api.dart';
import '../data/reservation_api.dart';
import '../data/services.dart';
import '../models/index.dart';

class AppEpics {
  const AppEpics(
      {required AuthApi authApi,
      required PlaceApi placeApi,
      required ReservationApi reservationApi,
      required Services services})
      : _authApi = authApi,
        _placeApi = placeApi,
        _reservationApi = reservationApi,
        _services = services;

  final AuthApi _authApi;
  final PlaceApi _placeApi;
  final ReservationApi _reservationApi;
  final Services _services;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, InitializeAppStart>(_initializeApp),
      TypedEpic<AppState, VerifyLocationServiceStart>(_verifyLocationService),
      TypedEpic<AppState, GetCurrentLocationStart>(_getCurrentLocation),
      TypedEpic<AppState, RegisterPhase1Start>(_registerPhase1),
      TypedEpic<AppState, RegisterPhase2Start>(_registerPhase2),
      TypedEpic<AppState, LoginStart>(_login),
      TypedEpic<AppState, SignoutStart>(_signOut),
      TypedEpic<AppState, EmailVerifyStart>(_verifyEmail),
      TypedEpic<AppState, ResetPasswordStart>(_resetPassword),
      TypedEpic<AppState, EditProfileStart>(_editProfile),
      TypedEpic<AppState, GetPlacesStart>(_getPlaces),
      TypedEpic<AppState, GetPlacesSearchedStart>(_getPlacesSearched),
      TypedEpic<AppState, GetPlacesSearchedAllStart>(_getPlacesSearchedAll),
      TypedEpic<AppState, GetPlacesFavouriteStart>(_getPlacesFavourite),
      TypedEpic<AppState, GetPlaceDetailsStart>(_getPlaceDetails),
      TypedEpic<AppState, GetPlaceActivitiesStart>(_getPlaceActivities),
      TypedEpic<AppState, GetPlaceActivityAvailabilityStart>(_getPlaceActivityAvailability),
      TypedEpic<AppState, SetPlaceFavouriteStart>(_setPlaceFavourite),
      TypedEpic<AppState, CreateReservationStart>(_createReservation),
      TypedEpic<AppState, DeleteReservationStart>(_deleteReservation),
      TypedEpic<AppState, GetReservationsPreviousStart>(_getReservationsPrevious),
      TypedEpic<AppState, GetReservationsFutureStart>(_getReservationsFuture),
    ]);
  }

  Stream<AppAction> _initializeApp(Stream<InitializeAppStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((InitializeAppStart action) => _authApi.getCurrentUser())
        .map((AppUser? user) => InitializeApp.successful(user))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => InitializeApp.error(error, stackTrace));
  }

  Stream<AppAction> _verifyLocationService(Stream<VerifyLocationServiceStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((VerifyLocationServiceStart action) => _services.verifyLocationService())
        .map((bool locationEnabled) => VerifyLocationService.successful(locationEnabled))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => VerifyLocationService.error(error, stackTrace));
  }

  Stream<AppAction> _getCurrentLocation(Stream<GetCurrentLocationStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetCurrentLocationStart action) => Stream<void>.value(null)
        .asyncMap((_) => _services.getCurrentLocation())
        .map((Position position) => GetCurrentLocation.successful(position))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetCurrentLocation.error(error, stackTrace))
        .doOnData(action.result));
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

  Stream<AppAction> _resetPassword(Stream<ResetPasswordStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((ResetPasswordStart action) => _authApi.resetPassword(action.email))
        .map((_) => const ResetPassword.successful())
        .onErrorReturnWith((Object error, StackTrace stackTrace) => ResetPassword.error(error, stackTrace));
  }

  Stream<AppAction> _editProfile(Stream<EditProfileStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((EditProfileStart action) => Stream<void>.value(null)
        .asyncMap((_) => _authApi.editProfile(action.iduser, action.fullname, action.phoneNumber, action.photoUrl))
        .map((AppUser user) => EditProfile.successful(user))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => EditProfile.error(error, stackTrace))
        .doOnData(action.result));
  }

  Stream<AppAction> _getPlaces(Stream<GetPlacesStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetPlacesStart action) => Stream<void>.value(null)
        .asyncMap((_) => _placeApi.getPlaces(action.filter, store.state.category!, store.state.latitude, store.state.longitude,2000, store.state.sortBy, store.state.listOfPlacesNextPage, 5))
        .map((Map<String, dynamic> body) => GetPlaces.successful(body))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetPlaces.error(error, stackTrace))
        .doOnData(action.result));
  }

  Stream<Object> _getPlacesSearched(Stream<GetPlacesSearchedStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetPlacesSearchedStart action) =>
            _placeApi.getPlacesSearched(action.name, 1, action.limit))
        .expand((Map<String, dynamic> body) {
      return <Object>[
        const DeletePlacesSearched(),
        GetPlacesSearched.successful(body),
      ];
    }).onErrorReturnWith((Object error, StackTrace stackTrace) => GetPlacesSearched.error(error, stackTrace));
  }

  Stream<AppAction> _getPlacesSearchedAll(Stream<GetPlacesSearchedAllStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetPlacesSearchedAllStart action) => Stream<void>.value(null)
        .asyncMap((_) => _placeApi.getPlacesSearched(action.name, store.state.listOfPlacesSearchedNextPage, action.limit))
        .map((Map<String, dynamic> body) => GetPlacesSearchedAll.successful(body))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetPlacesSearchedAll.error(error, stackTrace))
        .doOnData(action.result));
  }

  Stream<AppAction> _getPlacesFavourite(Stream<GetPlacesFavouriteStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetPlacesFavouriteStart action) => Stream<void>.value(null)
        .asyncMap((_) => _placeApi.getPlacesFavourite(store.state.user!.userId, store.state.listOfPlacesNextPage, 5))
        .map((Map<String, dynamic> body) => GetPlacesFavourite.successful(body))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetPlacesFavourite.error(error, stackTrace))
        .doOnData(action.result));
  }

  Stream<AppAction> _getPlaceDetails(Stream<GetPlaceDetailsStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetPlaceDetailsStart action) => Stream<void>.value(null)
        .asyncMap((_) => _placeApi.getPlaceDetails(action.idplace, action.iduser))
        .map((Place place) => GetPlaceDetails.successful(place))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetPlaceDetails.error(error, stackTrace))
        .doOnData(action.result));
  }

  Stream<AppAction> _getPlaceActivities(Stream<GetPlaceActivitiesStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetPlaceActivitiesStart action) => Stream<void>.value(null)
        .asyncMap((_) => _placeApi.getPlaceActivities(action.idplace))
        .map((List<PlaceActivity> activities) => GetPlaceActivities.successful(activities))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetPlaceActivities.error(error, stackTrace))
        .doOnData(action.result));
  }

  Stream<AppAction> _getPlaceActivityAvailability(
      Stream<GetPlaceActivityAvailabilityStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetPlaceActivityAvailabilityStart action) => Stream<void>.value(null)
        .asyncMap((_) => _placeApi.getPlaceActivityAvailability(action.idactivity, action.date, action.partySize))
        .map((List<PlaceActivityAvailability> availability) => GetPlaceActivityAvailability.successful(availability))
        .onErrorReturnWith(
            (Object error, StackTrace stackTrace) => GetPlaceActivityAvailability.error(error, stackTrace))
        .doOnData(action.result));
  }

  Stream<AppAction> _setPlaceFavourite(Stream<SetPlaceFavouriteStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((SetPlaceFavouriteStart action) =>
            _placeApi.setPlaceFavourite(action.iduser, action.idplace, action.addOrDelete))
        .map((_) => const SetPlaceFavourite.successful())
        .onErrorReturnWith((Object error, StackTrace stackTrace) => SetPlaceFavourite.error(error, stackTrace));
  }

  Stream<AppAction> _createReservation(Stream<CreateReservationStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((CreateReservationStart action) => Stream<void>.value(null)
        .asyncMap((_) => _reservationApi.createReservation(action.idplace, action.idactivity, action.idactivitySeating,
            action.iduser, action.date, action.hour, action.partySize))
        .map((_) => const CreateReservation.successful())
        .onErrorReturnWith((Object error, StackTrace stackTrace) => CreateReservation.error(error, stackTrace))
        .doOnData(action.result));
  }

  Stream<AppAction> _deleteReservation(Stream<DeleteReservationStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((DeleteReservationStart action) => Stream<void>.value(null)
        .asyncMap((_) => _reservationApi.deleteReservation(action.idreservation))
        .map((_) => const DeleteReservation.successful())
        .onErrorReturnWith((Object error, StackTrace stackTrace) => DeleteReservation.error(error, stackTrace))
        .doOnData(action.result));
  }

  Stream<AppAction> _getReservationsPrevious(Stream<GetReservationsPreviousStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetReservationsPreviousStart action) => Stream<void>.value(null)
        .asyncMap((_) => _reservationApi.getReservationsPrevious(
            action.iduser, store.state.listOfPreviousReservationsNextPage, action.limit))
        .map((Map<String, dynamic> body) => GetReservationsPrevious.successful(body))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetReservationsPrevious.error(error, stackTrace))
        .doOnData(action.result));
  }

  Stream<AppAction> _getReservationsFuture(Stream<GetReservationsFutureStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetReservationsFutureStart action) => Stream<void>.value(null)
        .asyncMap((_) => _reservationApi.getReservationsFuture(
            action.iduser, store.state.listOfFutureReservationsNextPage, action.limit))
        .map((Map<String, dynamic> body) => GetReservationsFuture.successful(body))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetReservationsFuture.error(error, stackTrace))
        .doOnData(action.result));
  }
}
