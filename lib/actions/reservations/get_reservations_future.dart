// File created by
// Dunica David-Gabriel <FLTY>
// on 06/03/2023 18:37:18

part of actions;

@freezed
class GetReservationsFuture with _$GetReservationsFuture implements AppAction {
  const factory GetReservationsFuture(int iduser, int page, int limit, ActionResult result) = GetReservationsFutureStart;

  const factory GetReservationsFuture.successful(List<Reservation> reservations) = GetReservationsFutureSuccessful;

  @Implements<ErrorAction>()
  const factory GetReservationsFuture.error(Object error, StackTrace stackTrace) = GetReservationsFutureError;
}