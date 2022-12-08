// File created by
// Dunica David-Gabriel <FLTY>
// on 08/12/2022 18:04:57

part of actions;

@freezed
class EmailVerify with _$EmailVerify implements AppAction {
  const factory EmailVerify() = EmailVerifyStart;

  const factory EmailVerify.successful() = EmailVerifySuccessful;

  @Implements<ErrorAction>()
  const factory EmailVerify.error(Object error, StackTrace stackTrace) = EmailVerifyError;
}