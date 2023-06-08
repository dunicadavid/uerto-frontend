// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();
Serializer<AppUser> _$appUserSerializer = new _$AppUserSerializer();
Serializer<PlaceShort> _$placeShortSerializer = new _$PlaceShortSerializer();
Serializer<PlaceActivity> _$placeActivitySerializer =
    new _$PlaceActivitySerializer();
Serializer<PlaceActivityAvailability> _$placeActivityAvailabilitySerializer =
    new _$PlaceActivityAvailabilitySerializer();
Serializer<Place> _$placeSerializer = new _$PlaceSerializer();
Serializer<RateRequest> _$rateRequestSerializer = new _$RateRequestSerializer();
Serializer<Reservation> _$reservationSerializer = new _$ReservationSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'listOfPlaces',
      serializers.serialize(object.listOfPlaces,
          specifiedType:
              const FullType(BuiltList, const [const FullType(PlaceShort)])),
      'listOfPlacesNextPage',
      serializers.serialize(object.listOfPlacesNextPage,
          specifiedType: const FullType(int)),
      'listOfPlacesSearchedNextPage',
      serializers.serialize(object.listOfPlacesSearchedNextPage,
          specifiedType: const FullType(int)),
      'visibleFilters',
      serializers.serialize(object.visibleFilters,
          specifiedType: const FullType(bool)),
      'visibleOthers',
      serializers.serialize(object.visibleOthers,
          specifiedType: const FullType(bool)),
      'listOfFutureReservationsNextPage',
      serializers.serialize(object.listOfFutureReservationsNextPage,
          specifiedType: const FullType(int)),
      'listOfPreviousReservationsNextPage',
      serializers.serialize(object.listOfPreviousReservationsNextPage,
          specifiedType: const FullType(int)),
      'isInitDone',
      serializers.serialize(object.isInitDone,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AppUser)));
    }
    value = object.listOfRateRequest;
    if (value != null) {
      result
        ..add('listOfRateRequest')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(RateRequest)])));
    }
    value = object.listOfPlacesSearched;
    if (value != null) {
      result
        ..add('listOfPlacesSearched')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltSet, const [const FullType(PlaceShort)])));
    }
    value = object.listOfPlacesRecommended;
    if (value != null) {
      result
        ..add('listOfPlacesRecommended')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(PlaceShort)])));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.filters;
    if (value != null) {
      result
        ..add('filters')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.sortBy;
    if (value != null) {
      result
        ..add('sortBy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.latitude;
    if (value != null) {
      result
        ..add('latitude')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.longitude;
    if (value != null) {
      result
        ..add('longitude')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.placeDetails;
    if (value != null) {
      result
        ..add('placeDetails')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Place)));
    }
    value = object.placeActivities;
    if (value != null) {
      result
        ..add('placeActivities')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(PlaceActivity)])));
    }
    value = object.placeActivityAvailability;
    if (value != null) {
      result
        ..add('placeActivityAvailability')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(PlaceActivityAvailability)])));
    }
    value = object.listOfFutureReservations;
    if (value != null) {
      result
        ..add('listOfFutureReservations')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(Reservation)])));
    }
    value = object.listOfPreviousReservations;
    if (value != null) {
      result
        ..add('listOfPreviousReservations')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(Reservation)])));
    }
    value = object.error;
    if (value != null) {
      result
        ..add('error')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isServerWorking;
    if (value != null) {
      result
        ..add('isServerWorking')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.locationEnabled;
    if (value != null) {
      result
        ..add('locationEnabled')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(AppUser))! as AppUser);
          break;
        case 'listOfRateRequest':
          result.listOfRateRequest.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(RateRequest)]))!
              as BuiltList<Object?>);
          break;
        case 'listOfPlaces':
          result.listOfPlaces.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PlaceShort)]))!
              as BuiltList<Object?>);
          break;
        case 'listOfPlacesNextPage':
          result.listOfPlacesNextPage = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'listOfPlacesSearched':
          result.listOfPlacesSearched.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltSet, const [const FullType(PlaceShort)]))!
              as BuiltSet<Object?>);
          break;
        case 'listOfPlacesSearchedNextPage':
          result.listOfPlacesSearchedNextPage = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'listOfPlacesRecommended':
          result.listOfPlacesRecommended.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PlaceShort)]))!
              as BuiltList<Object?>);
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'filters':
          result.filters.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'visibleFilters':
          result.visibleFilters = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'visibleOthers':
          result.visibleOthers = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'sortBy':
          result.sortBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'placeDetails':
          result.placeDetails.replace(serializers.deserialize(value,
              specifiedType: const FullType(Place))! as Place);
          break;
        case 'placeActivities':
          result.placeActivities.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PlaceActivity)]))!
              as BuiltList<Object?>);
          break;
        case 'placeActivityAvailability':
          result.placeActivityAvailability.replace(serializers.deserialize(
              value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(PlaceActivityAvailability)
              ]))! as BuiltList<Object?>);
          break;
        case 'listOfFutureReservations':
          result.listOfFutureReservations.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Reservation)]))!
              as BuiltList<Object?>);
          break;
        case 'listOfPreviousReservations':
          result.listOfPreviousReservations.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Reservation)]))!
              as BuiltList<Object?>);
          break;
        case 'listOfFutureReservationsNextPage':
          result.listOfFutureReservationsNextPage = serializers
              .deserialize(value, specifiedType: const FullType(int))! as int;
          break;
        case 'listOfPreviousReservationsNextPage':
          result.listOfPreviousReservationsNextPage = serializers
              .deserialize(value, specifiedType: const FullType(int))! as int;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isServerWorking':
          result.isServerWorking = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isInitDone':
          result.isInitDone = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'locationEnabled':
          result.locationEnabled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$AppUserSerializer implements StructuredSerializer<AppUser> {
  @override
  final Iterable<Type> types = const [AppUser, _$AppUser];
  @override
  final String wireName = 'AppUser';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'userId',
      serializers.serialize(object.userId, specifiedType: const FullType(int)),
      'fullname',
      serializers.serialize(object.fullname,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'phoneNumber',
      serializers.serialize(object.phoneNumber,
          specifiedType: const FullType(String)),
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'nextStrategy',
      serializers.serialize(object.nextStrategy,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photoUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AppUser deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'fullname':
          result.fullname = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'photoUrl':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nextStrategy':
          result.nextStrategy = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$PlaceShortSerializer implements StructuredSerializer<PlaceShort> {
  @override
  final Iterable<Type> types = const [PlaceShort, _$PlaceShort];
  @override
  final String wireName = 'PlaceShort';

  @override
  Iterable<Object?> serialize(Serializers serializers, PlaceShort object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'idplace',
      serializers.serialize(object.idplace, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'location',
      serializers.serialize(object.location,
          specifiedType: const FullType(String)),
      'rating',
      serializers.serialize(object.rating,
          specifiedType: const FullType(double)),
      'price',
      serializers.serialize(object.price, specifiedType: const FullType(int)),
      'category',
      serializers.serialize(object.category,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.geohash;
    if (value != null) {
      result
        ..add('geohash')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PlaceShort deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlaceShortBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'idplace':
          result.idplace = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'geohash':
          result.geohash = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$PlaceActivitySerializer implements StructuredSerializer<PlaceActivity> {
  @override
  final Iterable<Type> types = const [PlaceActivity, _$PlaceActivity];
  @override
  final String wireName = 'PlaceActivity';

  @override
  Iterable<Object?> serialize(Serializers serializers, PlaceActivity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'idactivity',
      serializers.serialize(object.idactivity,
          specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'hoursOfOpp',
      serializers.serialize(object.hoursOfOpp,
          specifiedType: const FullType(String)),
      'reservationTime',
      serializers.serialize(object.reservationTime,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  PlaceActivity deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlaceActivityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'idactivity':
          result.idactivity = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'hoursOfOpp':
          result.hoursOfOpp = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'reservationTime':
          result.reservationTime = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$PlaceActivityAvailabilitySerializer
    implements StructuredSerializer<PlaceActivityAvailability> {
  @override
  final Iterable<Type> types = const [
    PlaceActivityAvailability,
    _$PlaceActivityAvailability
  ];
  @override
  final String wireName = 'PlaceActivityAvailability';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PlaceActivityAvailability object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'idactivitySeating',
      serializers.serialize(object.idactivitySeating,
          specifiedType: const FullType(int)),
      'hour',
      serializers.serialize(object.hour, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  PlaceActivityAvailability deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlaceActivityAvailabilityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'idactivitySeating':
          result.idactivitySeating = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'hour':
          result.hour = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PlaceSerializer implements StructuredSerializer<Place> {
  @override
  final Iterable<Type> types = const [Place, _$Place];
  @override
  final String wireName = 'Place';

  @override
  Iterable<Object?> serialize(Serializers serializers, Place object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'idplace',
      serializers.serialize(object.idplace, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'location',
      serializers.serialize(object.location,
          specifiedType: const FullType(String)),
      'latitude',
      serializers.serialize(object.latitude,
          specifiedType: const FullType(double)),
      'longitude',
      serializers.serialize(object.longitude,
          specifiedType: const FullType(double)),
      'category',
      serializers.serialize(object.category,
          specifiedType: const FullType(String)),
      'hoursOfOpp',
      serializers.serialize(object.hoursOfOpp,
          specifiedType: const FullType(String)),
      'rating',
      serializers.serialize(object.rating,
          specifiedType: const FullType(double)),
      'price',
      serializers.serialize(object.price, specifiedType: const FullType(int)),
      'favourite',
      serializers.serialize(object.favourite,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Place deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlaceBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'idplace':
          result.idplace = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'hoursOfOpp':
          result.hoursOfOpp = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'favourite':
          result.favourite = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$RateRequestSerializer implements StructuredSerializer<RateRequest> {
  @override
  final Iterable<Type> types = const [RateRequest, _$RateRequest];
  @override
  final String wireName = 'RateRequest';

  @override
  Iterable<Object?> serialize(Serializers serializers, RateRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'idreservation',
      serializers.serialize(object.idreservation,
          specifiedType: const FullType(int)),
      'idplace',
      serializers.serialize(object.idplace, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  RateRequest deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RateRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'idreservation':
          result.idreservation = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'idplace':
          result.idplace = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ReservationSerializer implements StructuredSerializer<Reservation> {
  @override
  final Iterable<Type> types = const [Reservation, _$Reservation];
  @override
  final String wireName = 'Reservation';

  @override
  Iterable<Object?> serialize(Serializers serializers, Reservation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'idreservation',
      serializers.serialize(object.idreservation,
          specifiedType: const FullType(int)),
      'place',
      serializers.serialize(object.place, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'hour',
      serializers.serialize(object.hour, specifiedType: const FullType(String)),
      'partySize',
      serializers.serialize(object.partySize,
          specifiedType: const FullType(int)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Reservation deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReservationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'idreservation':
          result.idreservation = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'place':
          result.place = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'hour':
          result.hour = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'partySize':
          result.partySize = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final AppUser? user;
  @override
  final BuiltList<RateRequest>? listOfRateRequest;
  @override
  final BuiltList<PlaceShort> listOfPlaces;
  @override
  final int listOfPlacesNextPage;
  @override
  final BuiltSet<PlaceShort>? listOfPlacesSearched;
  @override
  final int listOfPlacesSearchedNextPage;
  @override
  final BuiltList<PlaceShort>? listOfPlacesRecommended;
  @override
  final String? category;
  @override
  final BuiltList<String>? filters;
  @override
  final bool visibleFilters;
  @override
  final bool visibleOthers;
  @override
  final String? sortBy;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final Place? placeDetails;
  @override
  final BuiltList<PlaceActivity>? placeActivities;
  @override
  final BuiltList<PlaceActivityAvailability>? placeActivityAvailability;
  @override
  final BuiltList<Reservation>? listOfFutureReservations;
  @override
  final BuiltList<Reservation>? listOfPreviousReservations;
  @override
  final int listOfFutureReservationsNextPage;
  @override
  final int listOfPreviousReservationsNextPage;
  @override
  final String? error;
  @override
  final bool? isServerWorking;
  @override
  final bool isInitDone;
  @override
  final bool? locationEnabled;

  factory _$AppState([void Function(AppStateBuilder)? updates]) =>
      (new AppStateBuilder()..update(updates))._build();

  _$AppState._(
      {this.user,
      this.listOfRateRequest,
      required this.listOfPlaces,
      required this.listOfPlacesNextPage,
      this.listOfPlacesSearched,
      required this.listOfPlacesSearchedNextPage,
      this.listOfPlacesRecommended,
      this.category,
      this.filters,
      required this.visibleFilters,
      required this.visibleOthers,
      this.sortBy,
      this.latitude,
      this.longitude,
      this.placeDetails,
      this.placeActivities,
      this.placeActivityAvailability,
      this.listOfFutureReservations,
      this.listOfPreviousReservations,
      required this.listOfFutureReservationsNextPage,
      required this.listOfPreviousReservationsNextPage,
      this.error,
      this.isServerWorking,
      required this.isInitDone,
      this.locationEnabled})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        listOfPlaces, r'AppState', 'listOfPlaces');
    BuiltValueNullFieldError.checkNotNull(
        listOfPlacesNextPage, r'AppState', 'listOfPlacesNextPage');
    BuiltValueNullFieldError.checkNotNull(listOfPlacesSearchedNextPage,
        r'AppState', 'listOfPlacesSearchedNextPage');
    BuiltValueNullFieldError.checkNotNull(
        visibleFilters, r'AppState', 'visibleFilters');
    BuiltValueNullFieldError.checkNotNull(
        visibleOthers, r'AppState', 'visibleOthers');
    BuiltValueNullFieldError.checkNotNull(listOfFutureReservationsNextPage,
        r'AppState', 'listOfFutureReservationsNextPage');
    BuiltValueNullFieldError.checkNotNull(listOfPreviousReservationsNextPage,
        r'AppState', 'listOfPreviousReservationsNextPage');
    BuiltValueNullFieldError.checkNotNull(
        isInitDone, r'AppState', 'isInitDone');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        user == other.user &&
        listOfRateRequest == other.listOfRateRequest &&
        listOfPlaces == other.listOfPlaces &&
        listOfPlacesNextPage == other.listOfPlacesNextPage &&
        listOfPlacesSearched == other.listOfPlacesSearched &&
        listOfPlacesSearchedNextPage == other.listOfPlacesSearchedNextPage &&
        listOfPlacesRecommended == other.listOfPlacesRecommended &&
        category == other.category &&
        filters == other.filters &&
        visibleFilters == other.visibleFilters &&
        visibleOthers == other.visibleOthers &&
        sortBy == other.sortBy &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        placeDetails == other.placeDetails &&
        placeActivities == other.placeActivities &&
        placeActivityAvailability == other.placeActivityAvailability &&
        listOfFutureReservations == other.listOfFutureReservations &&
        listOfPreviousReservations == other.listOfPreviousReservations &&
        listOfFutureReservationsNextPage ==
            other.listOfFutureReservationsNextPage &&
        listOfPreviousReservationsNextPage ==
            other.listOfPreviousReservationsNextPage &&
        error == other.error &&
        isServerWorking == other.isServerWorking &&
        isInitDone == other.isInitDone &&
        locationEnabled == other.locationEnabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, listOfRateRequest.hashCode);
    _$hash = $jc(_$hash, listOfPlaces.hashCode);
    _$hash = $jc(_$hash, listOfPlacesNextPage.hashCode);
    _$hash = $jc(_$hash, listOfPlacesSearched.hashCode);
    _$hash = $jc(_$hash, listOfPlacesSearchedNextPage.hashCode);
    _$hash = $jc(_$hash, listOfPlacesRecommended.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, visibleFilters.hashCode);
    _$hash = $jc(_$hash, visibleOthers.hashCode);
    _$hash = $jc(_$hash, sortBy.hashCode);
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, placeDetails.hashCode);
    _$hash = $jc(_$hash, placeActivities.hashCode);
    _$hash = $jc(_$hash, placeActivityAvailability.hashCode);
    _$hash = $jc(_$hash, listOfFutureReservations.hashCode);
    _$hash = $jc(_$hash, listOfPreviousReservations.hashCode);
    _$hash = $jc(_$hash, listOfFutureReservationsNextPage.hashCode);
    _$hash = $jc(_$hash, listOfPreviousReservationsNextPage.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, isServerWorking.hashCode);
    _$hash = $jc(_$hash, isInitDone.hashCode);
    _$hash = $jc(_$hash, locationEnabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppState')
          ..add('user', user)
          ..add('listOfRateRequest', listOfRateRequest)
          ..add('listOfPlaces', listOfPlaces)
          ..add('listOfPlacesNextPage', listOfPlacesNextPage)
          ..add('listOfPlacesSearched', listOfPlacesSearched)
          ..add('listOfPlacesSearchedNextPage', listOfPlacesSearchedNextPage)
          ..add('listOfPlacesRecommended', listOfPlacesRecommended)
          ..add('category', category)
          ..add('filters', filters)
          ..add('visibleFilters', visibleFilters)
          ..add('visibleOthers', visibleOthers)
          ..add('sortBy', sortBy)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('placeDetails', placeDetails)
          ..add('placeActivities', placeActivities)
          ..add('placeActivityAvailability', placeActivityAvailability)
          ..add('listOfFutureReservations', listOfFutureReservations)
          ..add('listOfPreviousReservations', listOfPreviousReservations)
          ..add('listOfFutureReservationsNextPage',
              listOfFutureReservationsNextPage)
          ..add('listOfPreviousReservationsNextPage',
              listOfPreviousReservationsNextPage)
          ..add('error', error)
          ..add('isServerWorking', isServerWorking)
          ..add('isInitDone', isInitDone)
          ..add('locationEnabled', locationEnabled))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  AppUserBuilder? _user;
  AppUserBuilder get user => _$this._user ??= new AppUserBuilder();
  set user(AppUserBuilder? user) => _$this._user = user;

  ListBuilder<RateRequest>? _listOfRateRequest;
  ListBuilder<RateRequest> get listOfRateRequest =>
      _$this._listOfRateRequest ??= new ListBuilder<RateRequest>();
  set listOfRateRequest(ListBuilder<RateRequest>? listOfRateRequest) =>
      _$this._listOfRateRequest = listOfRateRequest;

  ListBuilder<PlaceShort>? _listOfPlaces;
  ListBuilder<PlaceShort> get listOfPlaces =>
      _$this._listOfPlaces ??= new ListBuilder<PlaceShort>();
  set listOfPlaces(ListBuilder<PlaceShort>? listOfPlaces) =>
      _$this._listOfPlaces = listOfPlaces;

  int? _listOfPlacesNextPage;
  int? get listOfPlacesNextPage => _$this._listOfPlacesNextPage;
  set listOfPlacesNextPage(int? listOfPlacesNextPage) =>
      _$this._listOfPlacesNextPage = listOfPlacesNextPage;

  SetBuilder<PlaceShort>? _listOfPlacesSearched;
  SetBuilder<PlaceShort> get listOfPlacesSearched =>
      _$this._listOfPlacesSearched ??= new SetBuilder<PlaceShort>();
  set listOfPlacesSearched(SetBuilder<PlaceShort>? listOfPlacesSearched) =>
      _$this._listOfPlacesSearched = listOfPlacesSearched;

  int? _listOfPlacesSearchedNextPage;
  int? get listOfPlacesSearchedNextPage => _$this._listOfPlacesSearchedNextPage;
  set listOfPlacesSearchedNextPage(int? listOfPlacesSearchedNextPage) =>
      _$this._listOfPlacesSearchedNextPage = listOfPlacesSearchedNextPage;

  ListBuilder<PlaceShort>? _listOfPlacesRecommended;
  ListBuilder<PlaceShort> get listOfPlacesRecommended =>
      _$this._listOfPlacesRecommended ??= new ListBuilder<PlaceShort>();
  set listOfPlacesRecommended(
          ListBuilder<PlaceShort>? listOfPlacesRecommended) =>
      _$this._listOfPlacesRecommended = listOfPlacesRecommended;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  ListBuilder<String>? _filters;
  ListBuilder<String> get filters =>
      _$this._filters ??= new ListBuilder<String>();
  set filters(ListBuilder<String>? filters) => _$this._filters = filters;

  bool? _visibleFilters;
  bool? get visibleFilters => _$this._visibleFilters;
  set visibleFilters(bool? visibleFilters) =>
      _$this._visibleFilters = visibleFilters;

  bool? _visibleOthers;
  bool? get visibleOthers => _$this._visibleOthers;
  set visibleOthers(bool? visibleOthers) =>
      _$this._visibleOthers = visibleOthers;

  String? _sortBy;
  String? get sortBy => _$this._sortBy;
  set sortBy(String? sortBy) => _$this._sortBy = sortBy;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  PlaceBuilder? _placeDetails;
  PlaceBuilder get placeDetails => _$this._placeDetails ??= new PlaceBuilder();
  set placeDetails(PlaceBuilder? placeDetails) =>
      _$this._placeDetails = placeDetails;

  ListBuilder<PlaceActivity>? _placeActivities;
  ListBuilder<PlaceActivity> get placeActivities =>
      _$this._placeActivities ??= new ListBuilder<PlaceActivity>();
  set placeActivities(ListBuilder<PlaceActivity>? placeActivities) =>
      _$this._placeActivities = placeActivities;

  ListBuilder<PlaceActivityAvailability>? _placeActivityAvailability;
  ListBuilder<PlaceActivityAvailability> get placeActivityAvailability =>
      _$this._placeActivityAvailability ??=
          new ListBuilder<PlaceActivityAvailability>();
  set placeActivityAvailability(
          ListBuilder<PlaceActivityAvailability>? placeActivityAvailability) =>
      _$this._placeActivityAvailability = placeActivityAvailability;

  ListBuilder<Reservation>? _listOfFutureReservations;
  ListBuilder<Reservation> get listOfFutureReservations =>
      _$this._listOfFutureReservations ??= new ListBuilder<Reservation>();
  set listOfFutureReservations(
          ListBuilder<Reservation>? listOfFutureReservations) =>
      _$this._listOfFutureReservations = listOfFutureReservations;

  ListBuilder<Reservation>? _listOfPreviousReservations;
  ListBuilder<Reservation> get listOfPreviousReservations =>
      _$this._listOfPreviousReservations ??= new ListBuilder<Reservation>();
  set listOfPreviousReservations(
          ListBuilder<Reservation>? listOfPreviousReservations) =>
      _$this._listOfPreviousReservations = listOfPreviousReservations;

  int? _listOfFutureReservationsNextPage;
  int? get listOfFutureReservationsNextPage =>
      _$this._listOfFutureReservationsNextPage;
  set listOfFutureReservationsNextPage(int? listOfFutureReservationsNextPage) =>
      _$this._listOfFutureReservationsNextPage =
          listOfFutureReservationsNextPage;

  int? _listOfPreviousReservationsNextPage;
  int? get listOfPreviousReservationsNextPage =>
      _$this._listOfPreviousReservationsNextPage;
  set listOfPreviousReservationsNextPage(
          int? listOfPreviousReservationsNextPage) =>
      _$this._listOfPreviousReservationsNextPage =
          listOfPreviousReservationsNextPage;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isServerWorking;
  bool? get isServerWorking => _$this._isServerWorking;
  set isServerWorking(bool? isServerWorking) =>
      _$this._isServerWorking = isServerWorking;

  bool? _isInitDone;
  bool? get isInitDone => _$this._isInitDone;
  set isInitDone(bool? isInitDone) => _$this._isInitDone = isInitDone;

  bool? _locationEnabled;
  bool? get locationEnabled => _$this._locationEnabled;
  set locationEnabled(bool? locationEnabled) =>
      _$this._locationEnabled = locationEnabled;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user?.toBuilder();
      _listOfRateRequest = $v.listOfRateRequest?.toBuilder();
      _listOfPlaces = $v.listOfPlaces.toBuilder();
      _listOfPlacesNextPage = $v.listOfPlacesNextPage;
      _listOfPlacesSearched = $v.listOfPlacesSearched?.toBuilder();
      _listOfPlacesSearchedNextPage = $v.listOfPlacesSearchedNextPage;
      _listOfPlacesRecommended = $v.listOfPlacesRecommended?.toBuilder();
      _category = $v.category;
      _filters = $v.filters?.toBuilder();
      _visibleFilters = $v.visibleFilters;
      _visibleOthers = $v.visibleOthers;
      _sortBy = $v.sortBy;
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _placeDetails = $v.placeDetails?.toBuilder();
      _placeActivities = $v.placeActivities?.toBuilder();
      _placeActivityAvailability = $v.placeActivityAvailability?.toBuilder();
      _listOfFutureReservations = $v.listOfFutureReservations?.toBuilder();
      _listOfPreviousReservations = $v.listOfPreviousReservations?.toBuilder();
      _listOfFutureReservationsNextPage = $v.listOfFutureReservationsNextPage;
      _listOfPreviousReservationsNextPage =
          $v.listOfPreviousReservationsNextPage;
      _error = $v.error;
      _isServerWorking = $v.isServerWorking;
      _isInitDone = $v.isInitDone;
      _locationEnabled = $v.locationEnabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppState build() => _build();

  _$AppState _build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              user: _user?.build(),
              listOfRateRequest: _listOfRateRequest?.build(),
              listOfPlaces: listOfPlaces.build(),
              listOfPlacesNextPage: BuiltValueNullFieldError.checkNotNull(
                  listOfPlacesNextPage, r'AppState', 'listOfPlacesNextPage'),
              listOfPlacesSearched: _listOfPlacesSearched?.build(),
              listOfPlacesSearchedNextPage: BuiltValueNullFieldError.checkNotNull(
                  listOfPlacesSearchedNextPage, r'AppState', 'listOfPlacesSearchedNextPage'),
              listOfPlacesRecommended: _listOfPlacesRecommended?.build(),
              category: category,
              filters: _filters?.build(),
              visibleFilters: BuiltValueNullFieldError.checkNotNull(
                  visibleFilters, r'AppState', 'visibleFilters'),
              visibleOthers: BuiltValueNullFieldError.checkNotNull(
                  visibleOthers, r'AppState', 'visibleOthers'),
              sortBy: sortBy,
              latitude: latitude,
              longitude: longitude,
              placeDetails: _placeDetails?.build(),
              placeActivities: _placeActivities?.build(),
              placeActivityAvailability: _placeActivityAvailability?.build(),
              listOfFutureReservations: _listOfFutureReservations?.build(),
              listOfPreviousReservations: _listOfPreviousReservations?.build(),
              listOfFutureReservationsNextPage: BuiltValueNullFieldError.checkNotNull(
                  listOfFutureReservationsNextPage,
                  r'AppState',
                  'listOfFutureReservationsNextPage'),
              listOfPreviousReservationsNextPage:
                  BuiltValueNullFieldError.checkNotNull(
                      listOfPreviousReservationsNextPage,
                      r'AppState',
                      'listOfPreviousReservationsNextPage'),
              error: error,
              isServerWorking: isServerWorking,
              isInitDone: BuiltValueNullFieldError.checkNotNull(isInitDone, r'AppState', 'isInitDone'),
              locationEnabled: locationEnabled);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'listOfRateRequest';
        _listOfRateRequest?.build();
        _$failedField = 'listOfPlaces';
        listOfPlaces.build();

        _$failedField = 'listOfPlacesSearched';
        _listOfPlacesSearched?.build();

        _$failedField = 'listOfPlacesRecommended';
        _listOfPlacesRecommended?.build();

        _$failedField = 'filters';
        _filters?.build();

        _$failedField = 'placeDetails';
        _placeDetails?.build();
        _$failedField = 'placeActivities';
        _placeActivities?.build();
        _$failedField = 'placeActivityAvailability';
        _placeActivityAvailability?.build();
        _$failedField = 'listOfFutureReservations';
        _listOfFutureReservations?.build();
        _$failedField = 'listOfPreviousReservations';
        _listOfPreviousReservations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AppUser extends AppUser {
  @override
  final int userId;
  @override
  final String fullname;
  @override
  final String email;
  @override
  final String phoneNumber;
  @override
  final String uid;
  @override
  final String? photoUrl;
  @override
  final int nextStrategy;

  factory _$AppUser([void Function(AppUserBuilder)? updates]) =>
      (new AppUserBuilder()..update(updates))._build();

  _$AppUser._(
      {required this.userId,
      required this.fullname,
      required this.email,
      required this.phoneNumber,
      required this.uid,
      this.photoUrl,
      required this.nextStrategy})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(userId, r'AppUser', 'userId');
    BuiltValueNullFieldError.checkNotNull(fullname, r'AppUser', 'fullname');
    BuiltValueNullFieldError.checkNotNull(email, r'AppUser', 'email');
    BuiltValueNullFieldError.checkNotNull(
        phoneNumber, r'AppUser', 'phoneNumber');
    BuiltValueNullFieldError.checkNotNull(uid, r'AppUser', 'uid');
    BuiltValueNullFieldError.checkNotNull(
        nextStrategy, r'AppUser', 'nextStrategy');
  }

  @override
  AppUser rebuild(void Function(AppUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppUserBuilder toBuilder() => new AppUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppUser &&
        userId == other.userId &&
        fullname == other.fullname &&
        email == other.email &&
        phoneNumber == other.phoneNumber &&
        uid == other.uid &&
        photoUrl == other.photoUrl &&
        nextStrategy == other.nextStrategy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, fullname.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, photoUrl.hashCode);
    _$hash = $jc(_$hash, nextStrategy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppUser')
          ..add('userId', userId)
          ..add('fullname', fullname)
          ..add('email', email)
          ..add('phoneNumber', phoneNumber)
          ..add('uid', uid)
          ..add('photoUrl', photoUrl)
          ..add('nextStrategy', nextStrategy))
        .toString();
  }
}

class AppUserBuilder implements Builder<AppUser, AppUserBuilder> {
  _$AppUser? _$v;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  String? _fullname;
  String? get fullname => _$this._fullname;
  set fullname(String? fullname) => _$this._fullname = fullname;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  int? _nextStrategy;
  int? get nextStrategy => _$this._nextStrategy;
  set nextStrategy(int? nextStrategy) => _$this._nextStrategy = nextStrategy;

  AppUserBuilder();

  AppUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _fullname = $v.fullname;
      _email = $v.email;
      _phoneNumber = $v.phoneNumber;
      _uid = $v.uid;
      _photoUrl = $v.photoUrl;
      _nextStrategy = $v.nextStrategy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppUser;
  }

  @override
  void update(void Function(AppUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppUser build() => _build();

  _$AppUser _build() {
    final _$result = _$v ??
        new _$AppUser._(
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'AppUser', 'userId'),
            fullname: BuiltValueNullFieldError.checkNotNull(
                fullname, r'AppUser', 'fullname'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'AppUser', 'email'),
            phoneNumber: BuiltValueNullFieldError.checkNotNull(
                phoneNumber, r'AppUser', 'phoneNumber'),
            uid: BuiltValueNullFieldError.checkNotNull(uid, r'AppUser', 'uid'),
            photoUrl: photoUrl,
            nextStrategy: BuiltValueNullFieldError.checkNotNull(
                nextStrategy, r'AppUser', 'nextStrategy'));
    replace(_$result);
    return _$result;
  }
}

class _$PlaceShort extends PlaceShort {
  @override
  final int idplace;
  @override
  final String name;
  @override
  final String location;
  @override
  final double rating;
  @override
  final int price;
  @override
  final String category;
  @override
  final String? geohash;

  factory _$PlaceShort([void Function(PlaceShortBuilder)? updates]) =>
      (new PlaceShortBuilder()..update(updates))._build();

  _$PlaceShort._(
      {required this.idplace,
      required this.name,
      required this.location,
      required this.rating,
      required this.price,
      required this.category,
      this.geohash})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(idplace, r'PlaceShort', 'idplace');
    BuiltValueNullFieldError.checkNotNull(name, r'PlaceShort', 'name');
    BuiltValueNullFieldError.checkNotNull(location, r'PlaceShort', 'location');
    BuiltValueNullFieldError.checkNotNull(rating, r'PlaceShort', 'rating');
    BuiltValueNullFieldError.checkNotNull(price, r'PlaceShort', 'price');
    BuiltValueNullFieldError.checkNotNull(category, r'PlaceShort', 'category');
  }

  @override
  PlaceShort rebuild(void Function(PlaceShortBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaceShortBuilder toBuilder() => new PlaceShortBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceShort &&
        idplace == other.idplace &&
        name == other.name &&
        location == other.location &&
        rating == other.rating &&
        price == other.price &&
        category == other.category &&
        geohash == other.geohash;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, idplace.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, geohash.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaceShort')
          ..add('idplace', idplace)
          ..add('name', name)
          ..add('location', location)
          ..add('rating', rating)
          ..add('price', price)
          ..add('category', category)
          ..add('geohash', geohash))
        .toString();
  }
}

class PlaceShortBuilder implements Builder<PlaceShort, PlaceShortBuilder> {
  _$PlaceShort? _$v;

  int? _idplace;
  int? get idplace => _$this._idplace;
  set idplace(int? idplace) => _$this._idplace = idplace;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  double? _rating;
  double? get rating => _$this._rating;
  set rating(double? rating) => _$this._rating = rating;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  String? _geohash;
  String? get geohash => _$this._geohash;
  set geohash(String? geohash) => _$this._geohash = geohash;

  PlaceShortBuilder();

  PlaceShortBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idplace = $v.idplace;
      _name = $v.name;
      _location = $v.location;
      _rating = $v.rating;
      _price = $v.price;
      _category = $v.category;
      _geohash = $v.geohash;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceShort other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlaceShort;
  }

  @override
  void update(void Function(PlaceShortBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceShort build() => _build();

  _$PlaceShort _build() {
    final _$result = _$v ??
        new _$PlaceShort._(
            idplace: BuiltValueNullFieldError.checkNotNull(
                idplace, r'PlaceShort', 'idplace'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'PlaceShort', 'name'),
            location: BuiltValueNullFieldError.checkNotNull(
                location, r'PlaceShort', 'location'),
            rating: BuiltValueNullFieldError.checkNotNull(
                rating, r'PlaceShort', 'rating'),
            price: BuiltValueNullFieldError.checkNotNull(
                price, r'PlaceShort', 'price'),
            category: BuiltValueNullFieldError.checkNotNull(
                category, r'PlaceShort', 'category'),
            geohash: geohash);
    replace(_$result);
    return _$result;
  }
}

class _$PlaceActivity extends PlaceActivity {
  @override
  final int idactivity;
  @override
  final String name;
  @override
  final String hoursOfOpp;
  @override
  final int reservationTime;

  factory _$PlaceActivity([void Function(PlaceActivityBuilder)? updates]) =>
      (new PlaceActivityBuilder()..update(updates))._build();

  _$PlaceActivity._(
      {required this.idactivity,
      required this.name,
      required this.hoursOfOpp,
      required this.reservationTime})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        idactivity, r'PlaceActivity', 'idactivity');
    BuiltValueNullFieldError.checkNotNull(name, r'PlaceActivity', 'name');
    BuiltValueNullFieldError.checkNotNull(
        hoursOfOpp, r'PlaceActivity', 'hoursOfOpp');
    BuiltValueNullFieldError.checkNotNull(
        reservationTime, r'PlaceActivity', 'reservationTime');
  }

  @override
  PlaceActivity rebuild(void Function(PlaceActivityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaceActivityBuilder toBuilder() => new PlaceActivityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceActivity &&
        idactivity == other.idactivity &&
        name == other.name &&
        hoursOfOpp == other.hoursOfOpp &&
        reservationTime == other.reservationTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, idactivity.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, hoursOfOpp.hashCode);
    _$hash = $jc(_$hash, reservationTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaceActivity')
          ..add('idactivity', idactivity)
          ..add('name', name)
          ..add('hoursOfOpp', hoursOfOpp)
          ..add('reservationTime', reservationTime))
        .toString();
  }
}

class PlaceActivityBuilder
    implements Builder<PlaceActivity, PlaceActivityBuilder> {
  _$PlaceActivity? _$v;

  int? _idactivity;
  int? get idactivity => _$this._idactivity;
  set idactivity(int? idactivity) => _$this._idactivity = idactivity;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _hoursOfOpp;
  String? get hoursOfOpp => _$this._hoursOfOpp;
  set hoursOfOpp(String? hoursOfOpp) => _$this._hoursOfOpp = hoursOfOpp;

  int? _reservationTime;
  int? get reservationTime => _$this._reservationTime;
  set reservationTime(int? reservationTime) =>
      _$this._reservationTime = reservationTime;

  PlaceActivityBuilder();

  PlaceActivityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idactivity = $v.idactivity;
      _name = $v.name;
      _hoursOfOpp = $v.hoursOfOpp;
      _reservationTime = $v.reservationTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceActivity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlaceActivity;
  }

  @override
  void update(void Function(PlaceActivityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceActivity build() => _build();

  _$PlaceActivity _build() {
    final _$result = _$v ??
        new _$PlaceActivity._(
            idactivity: BuiltValueNullFieldError.checkNotNull(
                idactivity, r'PlaceActivity', 'idactivity'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'PlaceActivity', 'name'),
            hoursOfOpp: BuiltValueNullFieldError.checkNotNull(
                hoursOfOpp, r'PlaceActivity', 'hoursOfOpp'),
            reservationTime: BuiltValueNullFieldError.checkNotNull(
                reservationTime, r'PlaceActivity', 'reservationTime'));
    replace(_$result);
    return _$result;
  }
}

class _$PlaceActivityAvailability extends PlaceActivityAvailability {
  @override
  final int idactivitySeating;
  @override
  final String hour;

  factory _$PlaceActivityAvailability(
          [void Function(PlaceActivityAvailabilityBuilder)? updates]) =>
      (new PlaceActivityAvailabilityBuilder()..update(updates))._build();

  _$PlaceActivityAvailability._(
      {required this.idactivitySeating, required this.hour})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        idactivitySeating, r'PlaceActivityAvailability', 'idactivitySeating');
    BuiltValueNullFieldError.checkNotNull(
        hour, r'PlaceActivityAvailability', 'hour');
  }

  @override
  PlaceActivityAvailability rebuild(
          void Function(PlaceActivityAvailabilityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaceActivityAvailabilityBuilder toBuilder() =>
      new PlaceActivityAvailabilityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceActivityAvailability &&
        idactivitySeating == other.idactivitySeating &&
        hour == other.hour;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, idactivitySeating.hashCode);
    _$hash = $jc(_$hash, hour.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaceActivityAvailability')
          ..add('idactivitySeating', idactivitySeating)
          ..add('hour', hour))
        .toString();
  }
}

class PlaceActivityAvailabilityBuilder
    implements
        Builder<PlaceActivityAvailability, PlaceActivityAvailabilityBuilder> {
  _$PlaceActivityAvailability? _$v;

  int? _idactivitySeating;
  int? get idactivitySeating => _$this._idactivitySeating;
  set idactivitySeating(int? idactivitySeating) =>
      _$this._idactivitySeating = idactivitySeating;

  String? _hour;
  String? get hour => _$this._hour;
  set hour(String? hour) => _$this._hour = hour;

  PlaceActivityAvailabilityBuilder();

  PlaceActivityAvailabilityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idactivitySeating = $v.idactivitySeating;
      _hour = $v.hour;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceActivityAvailability other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlaceActivityAvailability;
  }

  @override
  void update(void Function(PlaceActivityAvailabilityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceActivityAvailability build() => _build();

  _$PlaceActivityAvailability _build() {
    final _$result = _$v ??
        new _$PlaceActivityAvailability._(
            idactivitySeating: BuiltValueNullFieldError.checkNotNull(
                idactivitySeating,
                r'PlaceActivityAvailability',
                'idactivitySeating'),
            hour: BuiltValueNullFieldError.checkNotNull(
                hour, r'PlaceActivityAvailability', 'hour'));
    replace(_$result);
    return _$result;
  }
}

class _$Place extends Place {
  @override
  final int idplace;
  @override
  final String name;
  @override
  final String location;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String category;
  @override
  final String hoursOfOpp;
  @override
  final double rating;
  @override
  final int price;
  @override
  final int favourite;

  factory _$Place([void Function(PlaceBuilder)? updates]) =>
      (new PlaceBuilder()..update(updates))._build();

  _$Place._(
      {required this.idplace,
      required this.name,
      required this.location,
      required this.latitude,
      required this.longitude,
      required this.category,
      required this.hoursOfOpp,
      required this.rating,
      required this.price,
      required this.favourite})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(idplace, r'Place', 'idplace');
    BuiltValueNullFieldError.checkNotNull(name, r'Place', 'name');
    BuiltValueNullFieldError.checkNotNull(location, r'Place', 'location');
    BuiltValueNullFieldError.checkNotNull(latitude, r'Place', 'latitude');
    BuiltValueNullFieldError.checkNotNull(longitude, r'Place', 'longitude');
    BuiltValueNullFieldError.checkNotNull(category, r'Place', 'category');
    BuiltValueNullFieldError.checkNotNull(hoursOfOpp, r'Place', 'hoursOfOpp');
    BuiltValueNullFieldError.checkNotNull(rating, r'Place', 'rating');
    BuiltValueNullFieldError.checkNotNull(price, r'Place', 'price');
    BuiltValueNullFieldError.checkNotNull(favourite, r'Place', 'favourite');
  }

  @override
  Place rebuild(void Function(PlaceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaceBuilder toBuilder() => new PlaceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Place &&
        idplace == other.idplace &&
        name == other.name &&
        location == other.location &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        category == other.category &&
        hoursOfOpp == other.hoursOfOpp &&
        rating == other.rating &&
        price == other.price &&
        favourite == other.favourite;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, idplace.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, hoursOfOpp.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, favourite.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Place')
          ..add('idplace', idplace)
          ..add('name', name)
          ..add('location', location)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('category', category)
          ..add('hoursOfOpp', hoursOfOpp)
          ..add('rating', rating)
          ..add('price', price)
          ..add('favourite', favourite))
        .toString();
  }
}

class PlaceBuilder implements Builder<Place, PlaceBuilder> {
  _$Place? _$v;

  int? _idplace;
  int? get idplace => _$this._idplace;
  set idplace(int? idplace) => _$this._idplace = idplace;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  String? _hoursOfOpp;
  String? get hoursOfOpp => _$this._hoursOfOpp;
  set hoursOfOpp(String? hoursOfOpp) => _$this._hoursOfOpp = hoursOfOpp;

  double? _rating;
  double? get rating => _$this._rating;
  set rating(double? rating) => _$this._rating = rating;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  int? _favourite;
  int? get favourite => _$this._favourite;
  set favourite(int? favourite) => _$this._favourite = favourite;

  PlaceBuilder();

  PlaceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idplace = $v.idplace;
      _name = $v.name;
      _location = $v.location;
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _category = $v.category;
      _hoursOfOpp = $v.hoursOfOpp;
      _rating = $v.rating;
      _price = $v.price;
      _favourite = $v.favourite;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Place other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Place;
  }

  @override
  void update(void Function(PlaceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Place build() => _build();

  _$Place _build() {
    final _$result = _$v ??
        new _$Place._(
            idplace: BuiltValueNullFieldError.checkNotNull(
                idplace, r'Place', 'idplace'),
            name: BuiltValueNullFieldError.checkNotNull(name, r'Place', 'name'),
            location: BuiltValueNullFieldError.checkNotNull(
                location, r'Place', 'location'),
            latitude: BuiltValueNullFieldError.checkNotNull(
                latitude, r'Place', 'latitude'),
            longitude: BuiltValueNullFieldError.checkNotNull(
                longitude, r'Place', 'longitude'),
            category: BuiltValueNullFieldError.checkNotNull(
                category, r'Place', 'category'),
            hoursOfOpp: BuiltValueNullFieldError.checkNotNull(
                hoursOfOpp, r'Place', 'hoursOfOpp'),
            rating: BuiltValueNullFieldError.checkNotNull(
                rating, r'Place', 'rating'),
            price:
                BuiltValueNullFieldError.checkNotNull(price, r'Place', 'price'),
            favourite: BuiltValueNullFieldError.checkNotNull(
                favourite, r'Place', 'favourite'));
    replace(_$result);
    return _$result;
  }
}

class _$RateRequest extends RateRequest {
  @override
  final int idreservation;
  @override
  final int idplace;
  @override
  final String name;
  @override
  final String date;

  factory _$RateRequest([void Function(RateRequestBuilder)? updates]) =>
      (new RateRequestBuilder()..update(updates))._build();

  _$RateRequest._(
      {required this.idreservation,
      required this.idplace,
      required this.name,
      required this.date})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        idreservation, r'RateRequest', 'idreservation');
    BuiltValueNullFieldError.checkNotNull(idplace, r'RateRequest', 'idplace');
    BuiltValueNullFieldError.checkNotNull(name, r'RateRequest', 'name');
    BuiltValueNullFieldError.checkNotNull(date, r'RateRequest', 'date');
  }

  @override
  RateRequest rebuild(void Function(RateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RateRequestBuilder toBuilder() => new RateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RateRequest &&
        idreservation == other.idreservation &&
        idplace == other.idplace &&
        name == other.name &&
        date == other.date;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, idreservation.hashCode);
    _$hash = $jc(_$hash, idplace.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RateRequest')
          ..add('idreservation', idreservation)
          ..add('idplace', idplace)
          ..add('name', name)
          ..add('date', date))
        .toString();
  }
}

class RateRequestBuilder implements Builder<RateRequest, RateRequestBuilder> {
  _$RateRequest? _$v;

  int? _idreservation;
  int? get idreservation => _$this._idreservation;
  set idreservation(int? idreservation) =>
      _$this._idreservation = idreservation;

  int? _idplace;
  int? get idplace => _$this._idplace;
  set idplace(int? idplace) => _$this._idplace = idplace;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  RateRequestBuilder();

  RateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idreservation = $v.idreservation;
      _idplace = $v.idplace;
      _name = $v.name;
      _date = $v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RateRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RateRequest;
  }

  @override
  void update(void Function(RateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RateRequest build() => _build();

  _$RateRequest _build() {
    final _$result = _$v ??
        new _$RateRequest._(
            idreservation: BuiltValueNullFieldError.checkNotNull(
                idreservation, r'RateRequest', 'idreservation'),
            idplace: BuiltValueNullFieldError.checkNotNull(
                idplace, r'RateRequest', 'idplace'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'RateRequest', 'name'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'RateRequest', 'date'));
    replace(_$result);
    return _$result;
  }
}

class _$Reservation extends Reservation {
  @override
  final int idreservation;
  @override
  final int place;
  @override
  final String name;
  @override
  final String date;
  @override
  final String hour;
  @override
  final int partySize;
  @override
  final String status;

  factory _$Reservation([void Function(ReservationBuilder)? updates]) =>
      (new ReservationBuilder()..update(updates))._build();

  _$Reservation._(
      {required this.idreservation,
      required this.place,
      required this.name,
      required this.date,
      required this.hour,
      required this.partySize,
      required this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        idreservation, r'Reservation', 'idreservation');
    BuiltValueNullFieldError.checkNotNull(place, r'Reservation', 'place');
    BuiltValueNullFieldError.checkNotNull(name, r'Reservation', 'name');
    BuiltValueNullFieldError.checkNotNull(date, r'Reservation', 'date');
    BuiltValueNullFieldError.checkNotNull(hour, r'Reservation', 'hour');
    BuiltValueNullFieldError.checkNotNull(
        partySize, r'Reservation', 'partySize');
    BuiltValueNullFieldError.checkNotNull(status, r'Reservation', 'status');
  }

  @override
  Reservation rebuild(void Function(ReservationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReservationBuilder toBuilder() => new ReservationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Reservation &&
        idreservation == other.idreservation &&
        place == other.place &&
        name == other.name &&
        date == other.date &&
        hour == other.hour &&
        partySize == other.partySize &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, idreservation.hashCode);
    _$hash = $jc(_$hash, place.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, hour.hashCode);
    _$hash = $jc(_$hash, partySize.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Reservation')
          ..add('idreservation', idreservation)
          ..add('place', place)
          ..add('name', name)
          ..add('date', date)
          ..add('hour', hour)
          ..add('partySize', partySize)
          ..add('status', status))
        .toString();
  }
}

class ReservationBuilder implements Builder<Reservation, ReservationBuilder> {
  _$Reservation? _$v;

  int? _idreservation;
  int? get idreservation => _$this._idreservation;
  set idreservation(int? idreservation) =>
      _$this._idreservation = idreservation;

  int? _place;
  int? get place => _$this._place;
  set place(int? place) => _$this._place = place;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _hour;
  String? get hour => _$this._hour;
  set hour(String? hour) => _$this._hour = hour;

  int? _partySize;
  int? get partySize => _$this._partySize;
  set partySize(int? partySize) => _$this._partySize = partySize;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ReservationBuilder();

  ReservationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idreservation = $v.idreservation;
      _place = $v.place;
      _name = $v.name;
      _date = $v.date;
      _hour = $v.hour;
      _partySize = $v.partySize;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Reservation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Reservation;
  }

  @override
  void update(void Function(ReservationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Reservation build() => _build();

  _$Reservation _build() {
    final _$result = _$v ??
        new _$Reservation._(
            idreservation: BuiltValueNullFieldError.checkNotNull(
                idreservation, r'Reservation', 'idreservation'),
            place: BuiltValueNullFieldError.checkNotNull(
                place, r'Reservation', 'place'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'Reservation', 'name'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'Reservation', 'date'),
            hour: BuiltValueNullFieldError.checkNotNull(
                hour, r'Reservation', 'hour'),
            partySize: BuiltValueNullFieldError.checkNotNull(
                partySize, r'Reservation', 'partySize'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'Reservation', 'status'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
