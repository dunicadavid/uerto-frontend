// File created by
// Dunica David-Gabriel <FLTY>
// on 30/11/2022 16:26:20

part of actions;

@freezed
class Signout with _$Signout implements AppAction {
  const factory Signout() = SignoutStart;

  const factory Signout.successful() = SignoutSuccessful;

  @Implements<ErrorAction>()
  const factory Signout.error(Object error, StackTrace stackTrace) = SignoutError;
}