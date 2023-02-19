// File created by
// Dunica David-Gabriel <FLTY>
// on 24/12/2022 19:37:49

part of actions;

@freezed
class GetPlaceDetails with _$GetPlaceDetails implements AppAction {
  const factory GetPlaceDetails(int idplace, int iduser, ActionResult result) = GetPlaceDetailsStart;

  const factory GetPlaceDetails.successful(Place place) = GetPlaceDetailsSuccessful;

  @Implements<ErrorAction>()
  const factory GetPlaceDetails.error(Object error, StackTrace stackTrace) = GetPlaceDetailsError;
}