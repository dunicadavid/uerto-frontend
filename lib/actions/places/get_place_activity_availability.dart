// File created by
// Dunica David-Gabriel <FLTY>
// on 16/02/2023 18:37:22

part of actions;

@freezed
class GetPlaceActivityAvailability with _$GetPlaceActivityAvailability implements AppAction {
  const factory GetPlaceActivityAvailability(int idactivity, String date, int partySize, ActionResult result) = GetPlaceActivityAvailabilityStart;

  const factory GetPlaceActivityAvailability.successful(List<PlaceActivityAvailability> availability) = GetPlaceActivityAvailabilitySuccessful;

  @Implements<ErrorAction>()
  const factory GetPlaceActivityAvailability.error(Object error, StackTrace stackTrace) = GetPlaceActivityAvailabilityError;
}