// File created by
// Dunica David-Gabriel <FLTY>
// on 12/12/2022 16:47:44

part of actions;

@freezed
class GetPlaces with _$GetPlaces implements AppAction {
  const factory GetPlaces(String filter, ActionResult result) = GetPlacesStart;

  const factory GetPlaces.successful(Map<String,dynamic> body) = GetPlacesSuccessful;

  @Implements<ErrorAction>()
  const factory GetPlaces.error(Object error, StackTrace stackTrace) = GetPlacesError;
}