// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();
Serializer<AppUser> _$appUserSerializer = new _$AppUserSerializer();
Serializer<PlaceShort> _$placeShortSerializer = new _$PlaceShortSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'listOfPlacesNextPage',
      serializers.serialize(object.listOfPlacesNextPage,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AppUser)));
    }
    value = object.listOfPlaces;
    if (value != null) {
      result
        ..add('listOfPlaces')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(PlaceShort)])));
    }
    value = object.error;
    if (value != null) {
      result
        ..add('error')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(AppUser))! as AppUser);
          break;
        case 'listOfPlaces':
          result.listOfPlaces.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PlaceShort)]))!
              as BuiltList<Object?>);
          break;
        case 'listOfPlacesNextPage':
          result.listOfPlacesNextPage = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$AppUserSerializer implements StructuredSerializer<AppUser> {
  @override
  final Iterable<Type> types = const [AppUser, _$AppUser];
  @override
  final String wireName = 'AppUser';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'userId',
      serializers.serialize(object.userId, specifiedType: const FullType(int)),
      'fullname',
      serializers.serialize(object.fullname,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'phoneNumber',
      serializers.serialize(object.phoneNumber,
          specifiedType: const FullType(String)),
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photoUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AppUser deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'fullname':
          result.fullname = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'photoUrl':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$PlaceShortSerializer implements StructuredSerializer<PlaceShort> {
  @override
  final Iterable<Type> types = const [PlaceShort, _$PlaceShort];
  @override
  final String wireName = 'PlaceShort';

  @override
  Iterable<Object?> serialize(Serializers serializers, PlaceShort object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'idplace',
      serializers.serialize(object.idplace, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'location',
      serializers.serialize(object.location,
          specifiedType: const FullType(String)),
      'category',
      serializers.serialize(object.category,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  PlaceShort deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlaceShortBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'idplace':
          result.idplace = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final AppUser? user;
  @override
  final BuiltList<PlaceShort>? listOfPlaces;
  @override
  final int listOfPlacesNextPage;
  @override
  final String? error;

  factory _$AppState([void Function(AppStateBuilder)? updates]) =>
      (new AppStateBuilder()..update(updates))._build();

  _$AppState._(
      {this.user,
      this.listOfPlaces,
      required this.listOfPlacesNextPage,
      this.error})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        listOfPlacesNextPage, r'AppState', 'listOfPlacesNextPage');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        user == other.user &&
        listOfPlaces == other.listOfPlaces &&
        listOfPlacesNextPage == other.listOfPlacesNextPage &&
        error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, user.hashCode), listOfPlaces.hashCode),
            listOfPlacesNextPage.hashCode),
        error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppState')
          ..add('user', user)
          ..add('listOfPlaces', listOfPlaces)
          ..add('listOfPlacesNextPage', listOfPlacesNextPage)
          ..add('error', error))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  AppUserBuilder? _user;
  AppUserBuilder get user => _$this._user ??= new AppUserBuilder();
  set user(AppUserBuilder? user) => _$this._user = user;

  ListBuilder<PlaceShort>? _listOfPlaces;
  ListBuilder<PlaceShort> get listOfPlaces =>
      _$this._listOfPlaces ??= new ListBuilder<PlaceShort>();
  set listOfPlaces(ListBuilder<PlaceShort>? listOfPlaces) =>
      _$this._listOfPlaces = listOfPlaces;

  int? _listOfPlacesNextPage;
  int? get listOfPlacesNextPage => _$this._listOfPlacesNextPage;
  set listOfPlacesNextPage(int? listOfPlacesNextPage) =>
      _$this._listOfPlacesNextPage = listOfPlacesNextPage;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user?.toBuilder();
      _listOfPlaces = $v.listOfPlaces?.toBuilder();
      _listOfPlacesNextPage = $v.listOfPlacesNextPage;
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppState build() => _build();

  _$AppState _build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              user: _user?.build(),
              listOfPlaces: _listOfPlaces?.build(),
              listOfPlacesNextPage: BuiltValueNullFieldError.checkNotNull(
                  listOfPlacesNextPage, r'AppState', 'listOfPlacesNextPage'),
              error: error);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'listOfPlaces';
        _listOfPlaces?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AppUser extends AppUser {
  @override
  final int userId;
  @override
  final String fullname;
  @override
  final String email;
  @override
  final String phoneNumber;
  @override
  final String uid;
  @override
  final String? photoUrl;

  factory _$AppUser([void Function(AppUserBuilder)? updates]) =>
      (new AppUserBuilder()..update(updates))._build();

  _$AppUser._(
      {required this.userId,
      required this.fullname,
      required this.email,
      required this.phoneNumber,
      required this.uid,
      this.photoUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(userId, r'AppUser', 'userId');
    BuiltValueNullFieldError.checkNotNull(fullname, r'AppUser', 'fullname');
    BuiltValueNullFieldError.checkNotNull(email, r'AppUser', 'email');
    BuiltValueNullFieldError.checkNotNull(
        phoneNumber, r'AppUser', 'phoneNumber');
    BuiltValueNullFieldError.checkNotNull(uid, r'AppUser', 'uid');
  }

  @override
  AppUser rebuild(void Function(AppUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppUserBuilder toBuilder() => new AppUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppUser &&
        userId == other.userId &&
        fullname == other.fullname &&
        email == other.email &&
        phoneNumber == other.phoneNumber &&
        uid == other.uid &&
        photoUrl == other.photoUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, userId.hashCode), fullname.hashCode),
                    email.hashCode),
                phoneNumber.hashCode),
            uid.hashCode),
        photoUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppUser')
          ..add('userId', userId)
          ..add('fullname', fullname)
          ..add('email', email)
          ..add('phoneNumber', phoneNumber)
          ..add('uid', uid)
          ..add('photoUrl', photoUrl))
        .toString();
  }
}

class AppUserBuilder implements Builder<AppUser, AppUserBuilder> {
  _$AppUser? _$v;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  String? _fullname;
  String? get fullname => _$this._fullname;
  set fullname(String? fullname) => _$this._fullname = fullname;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  AppUserBuilder();

  AppUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _fullname = $v.fullname;
      _email = $v.email;
      _phoneNumber = $v.phoneNumber;
      _uid = $v.uid;
      _photoUrl = $v.photoUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppUser;
  }

  @override
  void update(void Function(AppUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppUser build() => _build();

  _$AppUser _build() {
    final _$result = _$v ??
        new _$AppUser._(
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'AppUser', 'userId'),
            fullname: BuiltValueNullFieldError.checkNotNull(
                fullname, r'AppUser', 'fullname'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'AppUser', 'email'),
            phoneNumber: BuiltValueNullFieldError.checkNotNull(
                phoneNumber, r'AppUser', 'phoneNumber'),
            uid: BuiltValueNullFieldError.checkNotNull(uid, r'AppUser', 'uid'),
            photoUrl: photoUrl);
    replace(_$result);
    return _$result;
  }
}

class _$PlaceShort extends PlaceShort {
  @override
  final int idplace;
  @override
  final String name;
  @override
  final String location;
  @override
  final String category;

  factory _$PlaceShort([void Function(PlaceShortBuilder)? updates]) =>
      (new PlaceShortBuilder()..update(updates))._build();

  _$PlaceShort._(
      {required this.idplace,
      required this.name,
      required this.location,
      required this.category})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(idplace, r'PlaceShort', 'idplace');
    BuiltValueNullFieldError.checkNotNull(name, r'PlaceShort', 'name');
    BuiltValueNullFieldError.checkNotNull(location, r'PlaceShort', 'location');
    BuiltValueNullFieldError.checkNotNull(category, r'PlaceShort', 'category');
  }

  @override
  PlaceShort rebuild(void Function(PlaceShortBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaceShortBuilder toBuilder() => new PlaceShortBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceShort &&
        idplace == other.idplace &&
        name == other.name &&
        location == other.location &&
        category == other.category;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, idplace.hashCode), name.hashCode), location.hashCode),
        category.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaceShort')
          ..add('idplace', idplace)
          ..add('name', name)
          ..add('location', location)
          ..add('category', category))
        .toString();
  }
}

class PlaceShortBuilder implements Builder<PlaceShort, PlaceShortBuilder> {
  _$PlaceShort? _$v;

  int? _idplace;
  int? get idplace => _$this._idplace;
  set idplace(int? idplace) => _$this._idplace = idplace;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  PlaceShortBuilder();

  PlaceShortBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idplace = $v.idplace;
      _name = $v.name;
      _location = $v.location;
      _category = $v.category;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceShort other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlaceShort;
  }

  @override
  void update(void Function(PlaceShortBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceShort build() => _build();

  _$PlaceShort _build() {
    final _$result = _$v ??
        new _$PlaceShort._(
            idplace: BuiltValueNullFieldError.checkNotNull(
                idplace, r'PlaceShort', 'idplace'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'PlaceShort', 'name'),
            location: BuiltValueNullFieldError.checkNotNull(
                location, r'PlaceShort', 'location'),
            category: BuiltValueNullFieldError.checkNotNull(
                category, r'PlaceShort', 'category'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
