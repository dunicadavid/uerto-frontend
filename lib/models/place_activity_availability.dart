// File created by
// Dunica David-Gabriel <FLTY>
// on 16/02/2023 18:11:08

part of models;

abstract class PlaceActivityAvailability implements Built<PlaceActivityAvailability, PlaceActivityAvailabilityBuilder> {
  factory PlaceActivityAvailability([void Function(PlaceActivityAvailabilityBuilder b) updates]) = _$PlaceActivityAvailability;

  factory PlaceActivityAvailability.fromJson(dynamic json) =>
      serializers.deserializeWith(serializer, json) as PlaceActivityAvailability;

  PlaceActivityAvailability._();

  int get idactivitySeating;
  
  String get hour;

  Map<String, dynamic> get json =>
      serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<PlaceActivityAvailability> get serializer => _$placeActivityAvailabilitySerializer;
}

