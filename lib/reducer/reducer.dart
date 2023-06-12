// File created by
// Dunica David-Gabriel <FLTY>
// on 27/11/2022 18:01:40

import 'dart:convert';

import 'package:redux/redux.dart';

import '../actions/index.dart';
import '../models/index.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  (AppState state, dynamic action) {
    print(action);
    return state;
  },
  TypedReducer<AppState, VerifyLocationServiceSuccessful>(_verifyLocationServiceSuccessful),
  TypedReducer<AppState, VerifyLocationServiceError>(_verifyLocationServiceError),
  TypedReducer<AppState, GetCurrentLocationSuccessful>(_getCurrentLocationSuccessful),
  TypedReducer<AppState, UpdateLocation$>(_updateLocation),
  TypedReducer<AppState, InitializeAppSuccessful>(_initializeAppSuccessful),
  TypedReducer<AppState, InitializeAppError>(_initializeAppError),
  TypedReducer<AppState, RegisterPhase2Successful>(_registerPhase2Successful),
  TypedReducer<AppState, EditProfileSuccessful>(_editProfile),
  TypedReducer<AppState, EditProfileImageSuccessful>(_editProfileImage),
  TypedReducer<AppState, LoginSuccessful>(_loginSuccessful),
  TypedReducer<AppState, SignoutSuccessful>(_signOutSuccessful),
  TypedReducer<AppState, GetPlacesSuccessful>(_getPlacesSuccessful),
  TypedReducer<AppState, GetRecommendedPlacesSuccessful>(_getRecommendedPlacesSuccessful),
  TypedReducer<AppState, SetRecommenderStrategySuccessful>(_setRecommenderStrategySuccessful),
  TypedReducer<AppState, GetPlacesSearchedSuccessful>(_getPlacesSearchedSuccessful),
  TypedReducer<AppState, GetPlacesSearchedAllSuccessful>(_getPlacesSearchedAllSuccessful),
  TypedReducer<AppState, GetPlacesFavouriteSuccessful>(_getPlacesFavouriteSuccessful),
  TypedReducer<AppState, GetPlaceDetailsSuccessful>(_getPlaceDetailsSuccessful),
  TypedReducer<AppState, GetPlaceActivitiesSuccessful>(_getPlaceActivitiesSuccessful),
  TypedReducer<AppState, GetPlaceActivityAvailabilitySuccessful>(_getPlaceActivityAvailabilitySuccessful),
  TypedReducer<AppState, DeletePlaceActivityAvailability$>(_deletePlaceActivityAvailability),
  TypedReducer<AppState, DeletePlaces$>(_deletePlaces),
  TypedReducer<AppState, DeletePlacesSearched$>(_deletePlacesSearched),
  TypedReducer<AppState, DeletePlaceActivities$>(_deletePlaceActivities),
  TypedReducer<AppState, SetPlaceFavouriteSuccessful>(_setPlaceSuccessful),
  TypedReducer<AppState, SetPlacesCategory$>(_setPlacesCategory),
  TypedReducer<AppState, SetPlacesFilters$>(_setPlacesFilters),
  TypedReducer<AppState, SetPlacesSortedBy$>(_setPlacesSortedBy),
  TypedReducer<AppState, RemovePlacesCategory$>(_removePlacesCategory),
  TypedReducer<AppState, RemovePlacesFilters$>(_removePlacesFilters),
  TypedReducer<AppState, DeletePlacesFilters$>(_deletePlacesFilters),
  TypedReducer<AppState, DeletePlacesSortedBy$>(_deletePlacesSortedBy),
  TypedReducer<AppState, ChangePlacesOthersVisibility$>(_changePlacesOthersVisibility),
  TypedReducer<AppState, GetReservationsFutureSuccessful>(_getReservationsFuture),
  TypedReducer<AppState, GetReservationsPreviousSuccessful>(_getReservationsPrevious),
  TypedReducer<AppState, GetReservationsRateRequestSuccessful>(_getReservationsRateRequestSuccessful),
  TypedReducer<AppState, GetReservationsRateRequestError>(_getReservationsRateRequestError),
  TypedReducer<AppState, SetReservationRatingSuccessful>(_setReservationRating),
  TypedReducer<AppState, DeleteReservationRatingSuccessful>(_deleteReservationRating),
  TypedReducer<AppState, DeleteReservationsFuture$>(_deleteReservationsFuture),
  TypedReducer<AppState, DeleteReservationsPrevious$>(_deleteReservationsPrevious),
  TypedReducer<AppState, DeleteReservationSuccessful>(_deleteReservationSuccessful),
]);

AppState _verifyLocationServiceSuccessful(AppState state, VerifyLocationServiceSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b.locationEnabled = action.locationEnabled;
  });
}

AppState _verifyLocationServiceError(AppState state, VerifyLocationServiceError action) {
  return state.rebuild((AppStateBuilder b) {
    b.locationEnabled = false;
  });
}

AppState _getCurrentLocationSuccessful(AppState state, GetCurrentLocationSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..latitude = action.currentLocation.latitude
      ..longitude = action.currentLocation.longitude;
  });
}

AppState _updateLocation(AppState state, UpdateLocation$ action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..latitude = action.location.latitude
      ..longitude = action.location.longitude;
  });
}

AppState _initializeAppSuccessful(AppState state, InitializeAppSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    final Map<String, dynamic>? user = action.user != null ? action.user!['user'] as Map<String, dynamic> : null;
    final List<dynamic> requests =
        action.user != null ? action.user!['rateRequests'] as List<dynamic> : <RateRequest>[];
    b
      ..user = action.user != null ? AppUser.fromJson(user).toBuilder() : null
      ..listOfRateRequest.addAll(requests.map((dynamic json) => RateRequest.fromJson(json)).toList())
      ..isServerWorking = true
      ..isInitDone = true;
  });
}

AppState _initializeAppError(AppState state, InitializeAppError action) {
  return state.rebuild((AppStateBuilder b) {
    b.isServerWorking = false;
    b.isInitDone = true;
  });
}

AppState _registerPhase2Successful(AppState state, RegisterPhase2Successful action) {
  return state.rebuild((AppStateBuilder b) => b.user = action.user?.toBuilder());
}

AppState _editProfile(AppState state, EditProfileSuccessful action) {
  return state.rebuild((AppStateBuilder b) => b.user = action.user.toBuilder());
}

AppState _editProfileImage(AppState state, EditProfileImageSuccessful action) {
  final AppUser user = AppUser((AppUserBuilder b) {
    b
      ..userId = state.user!.userId
      ..uid = state.user!.uid
      ..fullname = state.user!.fullname
      ..email = state.user!.email
      ..phoneNumber = state.user!.phoneNumber
      ..photoUrl = action.photoUrl
      ..nextStrategy = state.user!.nextStrategy;
  });
  return state.rebuild((AppStateBuilder b) => b.user = user.toBuilder());
}

AppState _loginSuccessful(AppState state, LoginSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    final Map<String, dynamic>? user = action.user != null ? action.user!['user'] as Map<String, dynamic> : null;
    final List<dynamic> requests =
        action.user != null ? action.user!['rateRequests'] as List<dynamic> : <RateRequest>[];
    b
      ..user = action.user != null ? AppUser.fromJson(user).toBuilder() : null
      ..listOfRateRequest.addAll(requests.map((dynamic json) => RateRequest.fromJson(json)).toList());
  });
}

AppState _signOutSuccessful(AppState state, SignoutSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..user = null
      ..listOfRateRequest.clear();
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

AppState _getRecommendedPlacesSuccessful(AppState state, GetRecommendedPlacesSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b.listOfPlacesRecommended.clear();
    b.listOfPlacesRecommended.addAll(action.places);
  });
}

AppState _setRecommenderStrategySuccessful(AppState state, SetRecommenderStrategySuccessful action) {
  final AppUser user = AppUser((AppUserBuilder b) {
    b
      ..userId = state.user!.userId
      ..uid = state.user!.uid
      ..fullname = state.user!.fullname
      ..email = state.user!.email
      ..phoneNumber = state.user!.phoneNumber
      ..photoUrl = state.user!.photoUrl
      ..nextStrategy = action.strategy;
  });
  return state.rebuild((AppStateBuilder b) => b.user = user.toBuilder());
}

AppState _getPlacesSearchedSuccessful(AppState state, GetPlacesSearchedSuccessful action) {
  final List<dynamic> places = action.body['results'] as List<dynamic>;
  return state.rebuild((AppStateBuilder b) {
    b
      ..listOfPlacesSearched.clear()
      ..listOfPlacesSearched.addAll(places.map((dynamic json) => PlaceShort.fromJson(json)).toList())
      ..listOfPlacesSearchedNextPage = action.body.containsKey('next') ? b.listOfPlacesSearchedNextPage! + 1 : 0;
  });
}

AppState _getPlacesSearchedAllSuccessful(AppState state, GetPlacesSearchedAllSuccessful action) {
  final List<dynamic> places = action.body['results'] as List<dynamic>;
  return state.rebuild((AppStateBuilder b) {
    b
      ..listOfPlacesSearched.addAll(places.map((dynamic json) => PlaceShort.fromJson(json)).toList())
      ..listOfPlacesSearchedNextPage = action.body.containsKey('next') ? b.listOfPlacesSearchedNextPage! + 1 : 0;
  });
}

AppState _getPlacesFavouriteSuccessful(AppState state, GetPlacesFavouriteSuccessful action) {
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

AppState _getPlaceActivitiesSuccessful(AppState state, GetPlaceActivitiesSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b.placeActivities.clear();
    b.placeActivities.addAll(action.activities);
  });
}

AppState _getPlaceActivityAvailabilitySuccessful(AppState state, GetPlaceActivityAvailabilitySuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b.placeActivityAvailability.clear();

    for (final PlaceActivityAvailability availability in action.availability) {
      String hour = availability.hour;
      if (availability.hour[1] == ':') {
        hour = '0${availability.hour}';
      }
      if (availability.hour[availability.hour.length - 2] == ':') {
        hour = '${availability.hour}0';
        if (availability.hour[1] == ':') {
          hour = '0$hour';
        }
      }

      final PlaceActivityAvailability formatDataAvailability =
          PlaceActivityAvailability((PlaceActivityAvailabilityBuilder b) {
        b
          ..hour = hour
          ..idactivitySeating = availability.idactivitySeating;
      });

      b.placeActivityAvailability.add(formatDataAvailability);
    }
  });
}

AppState _deletePlaceActivityAvailability(AppState state, DeletePlaceActivityAvailability$ action) {
  return state.rebuild((AppStateBuilder b) {
    b.placeActivityAvailability.clear();
  });
}

AppState _deletePlaces(AppState state, DeletePlaces$ action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..listOfPlacesNextPage = 1
      ..listOfPlaces.clear();
  });
}

AppState _deletePlacesSearched(AppState state, DeletePlacesSearched$ action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..listOfPlacesSearchedNextPage = 1
      ..listOfPlacesSearched.clear();
  });
}

AppState _deletePlaceActivities(AppState state, DeletePlaceActivities$ action) {
  return state.rebuild((AppStateBuilder b) {
    b.placeActivities.clear();
  });
}

AppState _setPlaceSuccessful(AppState state, SetPlaceFavouriteSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b.placeDetails.favourite = b.placeDetails.favourite == 1 ? 0 : 1;
  });
}

AppState _setPlacesCategory(AppState state, SetPlacesCategory$ action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..category = action.category
      ..visibleFilters = true;
  });
}

AppState _setPlacesFilters(AppState state, SetPlacesFilters$ action) {
  return state.rebuild((AppStateBuilder b) {
    b.filters.add(action.filter);
  });
}

AppState _setPlacesSortedBy(AppState state, SetPlacesSortedBy$ action) {
  return state.rebuild((AppStateBuilder b) {
    b.sortBy = action.sortBy;
  });
}

AppState _removePlacesCategory(AppState state, RemovePlacesCategory$ action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..category = ''
      ..visibleFilters = false
      ..visibleOthers = false;
  });
}

AppState _removePlacesFilters(AppState state, RemovePlacesFilters$ action) {
  return state.rebuild((AppStateBuilder b) {
    b.filters.removeWhere((String element) => element == action.filter);
  });
}

AppState _deletePlacesFilters(AppState state, DeletePlacesFilters$ action) {
  return state.rebuild((AppStateBuilder b) {
    b.filters.clear();
  });
}

AppState _deletePlacesSortedBy(AppState state, DeletePlacesSortedBy$ action) {
  return state.rebuild((AppStateBuilder b) {
    b.sortBy = null;
  });
}

AppState _changePlacesOthersVisibility(AppState state, ChangePlacesOthersVisibility$ action) {
  return state.rebuild((AppStateBuilder b) {
    b.visibleOthers = !b.visibleOthers!;
  });
}

AppState _getReservationsFuture(AppState state, GetReservationsFutureSuccessful action) {
  final List<dynamic> reservations = action.body['results'] as List<dynamic>;

  ///modifica aici si mao jos 'results'
  return state.rebuild((AppStateBuilder b) {
    b
      ..listOfFutureReservations.addAll(reservations.map((dynamic json) => Reservation.fromJson(json)).toList())
      ..listOfFutureReservationsNextPage =
          action.body.containsKey('next') ? b.listOfFutureReservationsNextPage! + 1 : 0;
  });
}

AppState _getReservationsPrevious(AppState state, GetReservationsPreviousSuccessful action) {
  final List<dynamic> reservations = action.body['results'] as List<dynamic>;

  ///modifica aici si mao jos 'results'
  return state.rebuild((AppStateBuilder b) {
    b
      ..listOfPreviousReservations.addAll(reservations.map((dynamic json) => Reservation.fromJson(json)).toList())
      ..listOfPreviousReservationsNextPage =
          action.body.containsKey('next') ? b.listOfPreviousReservationsNextPage! + 1 : 0;
  });
}

AppState _getReservationsRateRequestSuccessful(AppState state, GetReservationsRateRequestSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..listOfRateRequest.addAll(action.rates)
      ..isInitDone = true;
  });
}

AppState _getReservationsRateRequestError(AppState state, GetReservationsRateRequestError action) {
  return state.rebuild((AppStateBuilder b) {
    b.isInitDone = true;
  });
}

AppState _setReservationRating(AppState state, SetReservationRatingSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b.listOfRateRequest.removeWhere((RateRequest value) => value.idreservation == action.idreservation);
  });
}

AppState _deleteReservationRating(AppState state, DeleteReservationRatingSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b.listOfRateRequest.removeWhere((RateRequest value) => value.idreservation == action.idreservation);
  });
}

AppState _deleteReservationsFuture(AppState state, DeleteReservationsFuture$ action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..listOfFutureReservationsNextPage = 1
      ..listOfFutureReservations.clear();
  });
}

AppState _deleteReservationsPrevious(AppState state, DeleteReservationsPrevious$ action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..listOfPreviousReservationsNextPage = 1
      ..listOfPreviousReservations.clear();
  });
}

AppState _deleteReservationSuccessful(AppState state, DeleteReservationSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..listOfFutureReservationsNextPage = 1
      ..listOfFutureReservations.clear();
  });
}
