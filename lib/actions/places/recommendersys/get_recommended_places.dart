// File created by
// Dunica David-Gabriel <FLTY>
// on 30/03/2023 17:01:58

part of actions;

@freezed
class GetRecommendedPlaces with _$GetRecommendedPlaces implements AppAction {
  const factory GetRecommendedPlaces(ActionResult result) = GetRecommendedPlacesStart;

  const factory GetRecommendedPlaces.successful(List<PlaceShort> places) = GetRecommendedPlacesSuccessful;

  @Implements<ErrorAction>()
  const factory GetRecommendedPlaces.error(Object error, StackTrace stackTrace) = GetRecommendedPlacesError;
}