// File created by
// Dunica David-Gabriel <FLTY>
// on 07/03/2023 14:31:30

part of actions;

@freezed
class EditProfile with _$EditProfile implements AppAction {
  const factory EditProfile(int iduser, String fullname, String phoneNumber, String photoUrl, ActionResult result) = EditProfileStart;

  const factory EditProfile.successful(AppUser user) = EditProfileSuccessful;

  @Implements<ErrorAction>()
  const factory EditProfile.error(Object error, StackTrace stackTrace) = EditProfileError;
}