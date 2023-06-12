// File created by
// Dunica David-Gabriel <FLTY>
// on 12/06/2023 12:58:40

part of actions;

@freezed
class EditProfileImage with _$EditProfileImage implements AppAction {
  const factory EditProfileImage(File imageFile, ActionResult result) = EditProfileImageStart;

  const factory EditProfileImage.successful(String photoUrl) = EditProfileImageSuccessful;

  @Implements<ErrorAction>()
  const factory EditProfileImage.error(Object error, StackTrace stackTrace) = EditProfileImageError;
}