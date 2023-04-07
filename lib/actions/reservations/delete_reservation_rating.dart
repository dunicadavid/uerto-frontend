// File created by
// Dunica David-Gabriel <FLTY>
// on 07/04/2023 17:44:22

part of actions;

@freezed
class DeleteReservationRating with _$DeleteReservationRating implements AppAction {
  const factory DeleteReservationRating(int idreservation ,ActionResult result) = DeleteReservationRatingStart;

  const factory DeleteReservationRating.successful(int idreservation) = DeleteReservationRatingSuccessful;

  @Implements<ErrorAction>()
  const factory DeleteReservationRating.error(Object error, StackTrace stackTrace) = DeleteReservationRatingError;
}