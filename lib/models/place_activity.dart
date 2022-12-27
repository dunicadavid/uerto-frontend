// File created by
// Dunica David-Gabriel <FLTY>
// on 27/12/2022 21:17:36

part of models;

abstract class PlaceActivity implements Built<PlaceActivity, PlaceActivityBuilder> {
  factory PlaceActivity([void Function(PlaceActivityBuilder b) updates]) = _$PlaceActivity;

  factory PlaceActivity.fromJson(dynamic json) =>
      serializers.deserializeWith(serializer, json) as PlaceActivity;

  PlaceActivity._();

  int get idactivity;

  String get name;

  String get hoursOfOpp;

  int get reservationTime;

  Map<String, dynamic> get json =>
      serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<PlaceActivity> get serializer => _$placeActivitySerializer;
}
