// File created by
// Dunica David-Gabriel <FLTY>
// on 08/12/2022 13:32:44

part of actions;

@freezed
class RegisterPhase2 with _$RegisterPhase2 implements AppAction {
  const factory RegisterPhase2(String fullname, String phoneNumber, String photoUrl, ActionResult result) = RegisterPhase2Start;

  const factory RegisterPhase2.successful(AppUser? user) = RegisterPhase2Successful;

  @Implements<ErrorAction>()
  const factory RegisterPhase2.error(Object error, StackTrace stackTrace) = RegisterPhase2Error;
}