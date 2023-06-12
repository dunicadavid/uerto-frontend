// File created by
// Dunica David-Gabriel <FLTY>
// on 24/12/2022 20:07:23

part of models;

abstract class Place implements Built<Place, PlaceBuilder> {
  factory Place([void Function(PlaceBuilder b) updates]) = _$Place;

  factory Place.fromJson(dynamic json) =>
      serializers.deserializeWith(serializer, json) as Place;

  Place._();

  int get idplace;

  String get name;

  BuiltList<String>? get images;

  String get location;
  double get latitude;
  double get longitude;

  String get category;

  String get hoursOfOpp;

  double get rating;
  int get price;
  int get favourite;

  Map<String, dynamic> get json =>
      serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<Place> get serializer => _$placeSerializer;
}
