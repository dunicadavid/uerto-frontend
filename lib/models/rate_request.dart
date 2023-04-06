// File created by
// Dunica David-Gabriel <FLTY>
// on 03/04/2023 17:48:23

part of models;

abstract class RateRequest implements Built<RateRequest, RateRequestBuilder> {
  factory RateRequest([void Function(RateRequestBuilder b) updates]) = _$RateRequest;

  factory RateRequest.fromJson(dynamic json) =>
      serializers.deserializeWith(serializer, json) as RateRequest;

  RateRequest._();

  int get idreservation;

  int get idplace;

  String get name;

  String get date;

  Map<String, dynamic> get json =>
      serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<RateRequest> get serializer => _$rateRequestSerializer;
}
