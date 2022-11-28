// File created by
// Dunica David-Gabriel <FLTY>
// on 27/11/2022 18:05:11
part of actions;

@freezed
class InitializeApp with _$InitializeApp implements AppAction {
  const factory InitializeApp() = InitializeAppStart;

  const factory InitializeApp.successful() = InitializeAppSuccessful;

  @Implements<ErrorAction>()
  const factory InitializeApp.error(Object error, StackTrace stackTrace) = InitializeAppError;
}
