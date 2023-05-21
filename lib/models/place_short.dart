// File created by
// Dunica David-Gabriel <FLTY>
// on 12/12/2022 15:04:49

part of models;

abstract class PlaceShort implements Built<PlaceShort, PlaceShortBuilder> {
  factory PlaceShort([void Function(PlaceShortBuilder b) updates]) = _$PlaceShort;

  factory PlaceShort.fromJson(dynamic json) =>
      serializers.deserializeWith(serializer, json) as PlaceShort;

  PlaceShort._();

  int get idplace;

  String get name;

  String get location;

  double get rating;

  int get price;

  String get category;

  String? get geohash;

  Map<String, dynamic> get json =>
      serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<PlaceShort> get serializer => _$placeShortSerializer;
}
