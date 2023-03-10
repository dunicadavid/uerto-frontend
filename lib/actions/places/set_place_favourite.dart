// File created by
// Dunica David-Gabriel <FLTY>
// on 10/03/2023 13:55:12

part of actions;

@freezed
class SetPlaceFavourite with _$SetPlaceFavourite implements AppAction {
  const factory SetPlaceFavourite(int iduser, int idplace, int addOrDelete) = SetPlaceFavouriteStart;

  const factory SetPlaceFavourite.successful() = SetPlaceFavouriteSuccessful;

  @Implements<ErrorAction>()
  const factory SetPlaceFavourite.error(Object error, StackTrace stackTrace) = SetPlaceFavouriteError;
}