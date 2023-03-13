// File created by
// Dunica David-Gabriel <FLTY>
// on 13/03/2023 12:07:24

part of actions;

@freezed
class DeleteReservation with _$DeleteReservation implements AppAction {
  const factory DeleteReservation(int idreservation, ActionResult result) = DeleteReservationStart;

  const factory DeleteReservation.successful() = DeleteReservationSuccessful;

  @Implements<ErrorAction>()
  const factory DeleteReservation.error(Object error, StackTrace stackTrace) = DeleteReservationError;
}