// File created by
// Dunica David-Gabriel <FLTY>
// on 06/03/2023 18:44:40

part of models;

abstract class Reservation implements Built<Reservation, ReservationBuilder> {
  factory Reservation([void Function(ReservationBuilder b) updates]) = _$Reservation;

  factory Reservation.fromJson(dynamic json) =>
      serializers.deserializeWith(serializer, json) as Reservation;

  Reservation._();

  int get idreservation;

  int get place;

  String get name;

  String get date;

  String get hour;

  int get partySize;

  String get status;

  Map<String, dynamic> get json =>
      serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<Reservation> get serializer => _$reservationSerializer;
}
