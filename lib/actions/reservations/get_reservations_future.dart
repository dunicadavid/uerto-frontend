// File created by
// Dunica David-Gabriel <FLTY>
// on 06/03/2023 18:37:18

part of actions;

@freezed
class GetReservationsFuture with _$GetReservationsFuture implements AppAction {
  const factory GetReservationsFuture(int iduser, int limit, ActionResult result) = GetReservationsFutureStart;

  const factory GetReservationsFuture.successful(Map<String,dynamic> body) = GetReservationsFutureSuccessful;

  @Implements<ErrorAction>()
  const factory GetReservationsFuture.error(Object error, StackTrace stackTrace) = GetReservationsFutureError;
}