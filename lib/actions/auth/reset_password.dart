// File created by
// Dunica David-Gabriel <FLTY>
// on 07/03/2023 11:03:36

part of actions;

@freezed
class ResetPassword with _$ResetPassword implements AppAction {
  const factory ResetPassword(String email) = ResetPasswordStart;

  const factory ResetPassword.successful() = ResetPasswordSuccessful;

  @Implements<ErrorAction>()
  const factory ResetPassword.error(Object error, StackTrace stackTrace) = ResetPasswordError;
}