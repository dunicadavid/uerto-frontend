// File created by
// Dunica David-Gabriel <FLTY>
// on 27/11/2022 17:49:07

part of models;

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState.initialState() {
    return _$AppState((AppStateBuilder b) {
      b
        ..listOfPlacesNextPage = 1
        ..listOfFutureReservationsNextPage = 1
        ..listOfPreviousReservationsNextPage = 1
        ..isInitDone = false;
    });
  }

  factory AppState.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  AppState._();

  AppUser? get user;

  BuiltList<PlaceShort>? get listOfPlaces;
  int get listOfPlacesNextPage;
  String? get category;

  Place? get placeDetails;
  BuiltList<PlaceActivity>? get placeActivities;
  BuiltList<PlaceActivityAvailability>? get placeActivityAvailability;

  BuiltList<Reservation>? get listOfFutureReservations;
  BuiltList<Reservation>? get listOfPreviousReservations;
  int get listOfFutureReservationsNextPage;
  int get listOfPreviousReservationsNextPage;

  String? get error;

  bool? get isServerWorking;
  bool get isInitDone;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<AppState> get serializer => _$appStateSerializer;
}
