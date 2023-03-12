// File created by
// Dunica David-Gabriel <FLTY>
// on 12/03/2023 13:36:53

part of actions;

@freezed
class GetPlacesSearchedAll with _$GetPlacesSearchedAll implements AppAction {
  const factory GetPlacesSearchedAll(String name, int limit, ActionResult result) = GetPlacesSearchedAllStart;

  const factory GetPlacesSearchedAll.successful(Map<String,dynamic> body) = GetPlacesSearchedAllSuccessful;

  @Implements<ErrorAction>()
  const factory GetPlacesSearchedAll.error(Object error, StackTrace stackTrace) = GetPlacesSearchedAllError;
}