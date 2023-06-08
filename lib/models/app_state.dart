// File created by
// Dunica David-Gabriel <FLTY>
// on 27/11/2022 17:49:07

part of models;

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState.initialState() {
    return _$AppState((AppStateBuilder b) {
      b
        ..listOfPlacesNextPage = 1
        ..listOfPlacesSearchedNextPage = 1
        ..listOfFutureReservationsNextPage = 1
        ..listOfPreviousReservationsNextPage = 1
        ..listOfPlacesSearched.clear() //null check cand intru pe pagina de search
        ..listOfRateRequest.clear()
        ..filters.clear()
        ..visibleFilters = false
        ..visibleOthers = false
        ..category = ''
        ..isInitDone = false;
    });
  }

  factory AppState.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  AppState._();

  AppUser? get user;
  BuiltList<RateRequest>? get listOfRateRequest;

  BuiltList<PlaceShort> get listOfPlaces;
  int get listOfPlacesNextPage;

  BuiltSet<PlaceShort>? get listOfPlacesSearched;
  int get listOfPlacesSearchedNextPage;

  BuiltList<PlaceShort>? get listOfPlacesRecommended;

  String? get category;
  BuiltList<String>? get filters;
  bool get visibleFilters;
  bool get visibleOthers;
  String? get sortBy;
  double? get latitude;
  double? get longitude;

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
  bool? get locationEnabled;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<AppState> get serializer => _$appStateSerializer;
}
