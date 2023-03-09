// File created by
// Dunica David-Gabriel <FLTY>
// on 09/03/2023 18:20:38

part of actions;

@freezed
class GetCurrentLocation with _$GetCurrentLocation implements AppAction {
  const factory GetCurrentLocation(ActionResult result) = GetCurrentLocationStart;

  const factory GetCurrentLocation.successful(Position currentLocation) = GetCurrentLocationSuccessful;

  @Implements<ErrorAction>()
  const factory GetCurrentLocation.error(Object error, StackTrace stackTrace) = GetCurrentLocationError;
}