// File created by
// Dunica David-Gabriel <FLTY>
// on 11/03/2023 14:06:11

part of actions;

@freezed
class GetPlacesSearched with _$GetPlacesSearched implements AppAction {
  const factory GetPlacesSearched(String name, int limit) = GetPlacesSearchedStart;

  const factory GetPlacesSearched.successful(Map<String,dynamic> body) = GetPlacesSearchedSuccessful;

  @Implements<ErrorAction>()
  const factory GetPlacesSearched.error(Object error, StackTrace stackTrace) = GetPlacesSearchedError;
}