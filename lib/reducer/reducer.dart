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
  TypedReducer<AppState, GetPlaceActivitiesSuccessful>(_getPlaceActivitiesSuccessful),
  TypedReducer<AppState, GetPlaceActivityAvailabilitySuccessful>(_getPlaceActivityAvailabilitySuccessful),
  TypedReducer<AppState, DeletePlaces$>(_deletePlaces),
  TypedReducer<AppState, DeletePlaceActivities$>(_deletePlaceActivities),

  TypedReducer<AppState, GetReservationsFutureSuccessful>(_getReservationsFuture),
  TypedReducer<AppState, GetReservationsPreviousSuccessful>(_getReservationsPrevious),

]);

AppState _initializeAppSuccessful(AppState state, InitializeAppSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b.user = action.user?.toBuilder();
    b.isServerWorking = true;
    b.isInitDone = true;
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

AppState _loginSuccessful(AppState state, LoginSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b.user = action.user?.toBuilder();
    b.isServerWorking = true;
    b.isInitDone = true;
  });
}

AppState _loginError(AppState state, LoginError action) {
  return state.rebuild((AppStateBuilder b) {
    b.isServerWorking = false;
    b.isInitDone = true;
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
      if(availability.hour[1] == ':'){
        hour = '0${availability.hour}';
      }
      if(availability.hour[availability.hour.length-2] == ':'){
        hour = '${availability.hour}0';
        if(availability.hour[1] == ':'){
          hour = '0$hour';
        }
      }

      final PlaceActivityAvailability formatDataAvailability = PlaceActivityAvailability((PlaceActivityAvailabilityBuilder b) {
        b
          ..hour = hour
          ..idactivitySeating = availability.idactivitySeating;
      });

      b.placeActivityAvailability.add(formatDataAvailability);
    }
  });
}


AppState _deletePlaces(AppState state, DeletePlaces$ action) {
  return state.rebuild((AppStateBuilder b) {
    b..listOfPlacesNextPage = 1
        ..listOfPlaces.clear();
  });
}

AppState _deletePlaceActivities(AppState state, DeletePlaceActivities$ action) {
  return state.rebuild((AppStateBuilder b) {
    b.placeActivities.clear();
  });
}

AppState _getReservationsFuture(AppState state, GetReservationsFutureSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b.listOfFutureReservations.clear();
    b.listOfFutureReservations.addAll(action.reservations);
  });
}

AppState _getReservationsPrevious(AppState state, GetReservationsPreviousSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b.listOfPreviousReservations.clear();
    b.listOfPreviousReservations.addAll(action.reservations);
  });
}
