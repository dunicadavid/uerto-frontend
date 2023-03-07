// File created by
// Dunica David-Gabriel <FLTY>
// on 02/03/2023 17:01:12

part of actions;

@freezed
class CreateReservation with _$CreateReservation implements AppAction {
  const factory CreateReservation(int idplace, int idactivity, int idactivitySeating, int iduser, String date, String hour, int partySize, ActionResult result) = CreateReservationStart;

  const factory CreateReservation.successful() = CreateReservationSuccessful;

  @Implements<ErrorAction>()
  const factory CreateReservation.error(Object error, StackTrace stackTrace) = CreateReservationError;
}