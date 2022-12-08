// File created by
// Dunica David-Gabriel <FLTY>
// on 30/11/2022 16:25:43

part of actions;

@freezed
class RegisterPhase1 with _$RegisterPhase1 implements AppAction {
  const factory RegisterPhase1(String email, String password, ActionResult result) = RegisterPhase1Start;

  const factory RegisterPhase1.successful() = RegisterPhase1Successful;

  @Implements<ErrorAction>()
  const factory RegisterPhase1.error(Object error, StackTrace stackTrace) = RegisterPhase1Error;
}