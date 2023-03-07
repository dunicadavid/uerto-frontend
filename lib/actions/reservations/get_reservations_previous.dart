// File created by
// Dunica David-Gabriel <FLTY>
// on 06/03/2023 18:37:06

part of actions;

@freezed
class GetReservationsPrevious with _$GetReservationsPrevious implements AppAction {
  const factory GetReservationsPrevious(int iduser, int page, int limit, ActionResult result) = GetReservationsPreviousStart;

  const factory GetReservationsPrevious.successful(List<Reservation> reservations) = GetReservationsPreviousSuccessful;

  @Implements<ErrorAction>()
  const factory GetReservationsPrevious.error(Object error, StackTrace stackTrace) = GetReservationsPreviousError;
}