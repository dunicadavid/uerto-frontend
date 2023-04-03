// File created by
// Dunica David-Gabriel <FLTY>
// on 03/04/2023 19:04:00

part of actions;

@freezed
class GetReservationsRateRequest with _$GetReservationsRateRequest implements AppAction {
  const factory GetReservationsRateRequest(int iduser, ActionResult result) = GetReservationsRateRequestStart;

  const factory GetReservationsRateRequest.successful(List<RateRequest> rates) = GetReservationsRateRequestSuccessful;

  @Implements<ErrorAction>()
  const factory GetReservationsRateRequest.error(Object error, StackTrace stackTrace) = GetReservationsRateRequestError;
}