// File created by
// Dunica David-Gabriel <FLTY>
// on 10/03/2023 15:50:21

part of actions;

@freezed
class GetPlacesFavourite with _$GetPlacesFavourite implements AppAction {
  const factory GetPlacesFavourite(ActionResult result) = GetPlacesFavouriteStart;

  const factory GetPlacesFavourite.successful(Map<String,dynamic> body) = GetPlacesFavouriteSuccessful;

  @Implements<ErrorAction>()
  const factory GetPlacesFavourite.error(Object error, StackTrace stackTrace) = GetPlacesFavouriteError;
}