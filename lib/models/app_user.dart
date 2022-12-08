// File created by
// Dunica David-Gabriel <FLTY>
// on 30/11/2022 15:34:55

part of models;

abstract class AppUser implements Built<AppUser, AppUserBuilder> {
  factory AppUser([void Function(AppUserBuilder b) updates]) = _$AppUser;

  factory AppUser.fromJson(dynamic json) =>
      serializers.deserializeWith(serializer, json) as AppUser;

  AppUser._();

  int get userId;

  String get fullname;

  String get email;

  String get phoneNumber;

  String get uid;

  String? get photoUrl;

  Map<String, dynamic> get json =>
      serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<AppUser> get serializer => _$appUserSerializer;
}
