// File created by
// Dunica David-Gabriel <FLTY>
// on 06/04/2023 15:31:12

part of actions;

@freezed
class SetReservationRating with _$SetReservationRating implements AppAction {
  const factory SetReservationRating(int idplace ,int idreservation ,int rating, ActionResult result) = SetReservationRatingStart;

  const factory SetReservationRating.successful(int idreservation) = SetReservationRatingSuccessful;

  @Implements<ErrorAction>()
  const factory SetReservationRating.error(Object error, StackTrace stackTrace) = SetReservationRatingError;
}