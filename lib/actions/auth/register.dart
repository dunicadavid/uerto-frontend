// File created by
// Dunica David-Gabriel <FLTY>
// on 30/11/2022 16:25:43

part of actions;

@freezed
class Register with _$Register implements AppAction {
  const factory Register(String email, String password, String fullName, String phoneNumber, ActionResult result) = RegisterStart;

  const factory Register.successful(AppUser user) = RegisterSuccessful;

  @Implements<ErrorAction>()
  const factory Register.error(Object error, StackTrace stackTrace) = RegisterError;
}