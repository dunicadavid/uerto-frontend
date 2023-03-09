// File created by
// Dunica David-Gabriel <FLTY>
// on 09/03/2023 17:15:57

part of actions;

@freezed
class VerifyLocationService with _$VerifyLocationService implements AppAction {
  const factory VerifyLocationService() = VerifyLocationServiceStart;

  const factory VerifyLocationService.successful(bool locationEnabled) = VerifyLocationServiceSuccessful;

  @Implements<ErrorAction>()
  const factory VerifyLocationService.error(Object error, StackTrace stackTrace) = VerifyLocationServiceError;
}