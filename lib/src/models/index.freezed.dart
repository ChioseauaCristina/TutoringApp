// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'index.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppUser _$AppUserFromJson(Map<String, dynamic> json) {
  return AppUser$.fromJson(json);
}

/// @nodoc
class _$AppUserTearOff {
  const _$AppUserTearOff();

  AppUser$ call(
      {required String uid, required String email, required String username}) {
    return AppUser$(
      uid: uid,
      email: email,
      username: username,
    );
  }

  AppUser fromJson(Map<String, Object?> json) {
    return AppUser.fromJson(json);
  }
}

/// @nodoc
const $AppUser = _$AppUserTearOff();

/// @nodoc
mixin _$AppUser {
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUserCopyWith<AppUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) =
      _$AppUserCopyWithImpl<$Res>;
  $Res call({String uid, String email, String username});
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res> implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

  final AppUser _value;
  // ignore: unused_field
  final $Res Function(AppUser) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $AppUser$CopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory $AppUser$CopyWith(AppUser$ value, $Res Function(AppUser$) then) =
      _$AppUser$CopyWithImpl<$Res>;
  @override
  $Res call({String uid, String email, String username});
}

/// @nodoc
class _$AppUser$CopyWithImpl<$Res> extends _$AppUserCopyWithImpl<$Res>
    implements $AppUser$CopyWith<$Res> {
  _$AppUser$CopyWithImpl(AppUser$ _value, $Res Function(AppUser$) _then)
      : super(_value, (v) => _then(v as AppUser$));

  @override
  AppUser$ get _value => super._value as AppUser$;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? username = freezed,
  }) {
    return _then(AppUser$(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppUser$ implements AppUser$ {
  const _$AppUser$(
      {required this.uid, required this.email, required this.username});

  factory _$AppUser$.fromJson(Map<String, dynamic> json) =>
      _$$AppUser$FromJson(json);

  @override
  final String uid;
  @override
  final String email;
  @override
  final String username;

  @override
  String toString() {
    return 'AppUser(uid: $uid, email: $email, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppUser$ &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  $AppUser$CopyWith<AppUser$> get copyWith =>
      _$AppUser$CopyWithImpl<AppUser$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppUser$ToJson(this);
  }
}

abstract class AppUser$ implements AppUser {
  const factory AppUser$(
      {required String uid,
      required String email,
      required String username}) = _$AppUser$;

  factory AppUser$.fromJson(Map<String, dynamic> json) = _$AppUser$.fromJson;

  @override
  String get uid;
  @override
  String get email;
  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  $AppUser$CopyWith<AppUser$> get copyWith =>
      throw _privateConstructorUsedError;
}

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return AppState$.fromJson(json);
}

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  AppState$ call(
      {AppUser? user,
      Set<String> pending = const <String>{},
      Map<String, AppUser> users = const <String, AppUser>{}}) {
    return AppState$(
      user: user,
      pending: pending,
      users: users,
    );
  }

  AppState fromJson(Map<String, Object?> json) {
    return AppState.fromJson(json);
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  AppUser? get user =>
      throw _privateConstructorUsedError; //AppTeacher? teacher,
  Set<String> get pending => throw _privateConstructorUsedError;
  Map<String, AppUser> get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call({AppUser? user, Set<String> pending, Map<String, AppUser> users});

  $AppUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? pending = freezed,
    Object? users = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      pending: pending == freezed
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as Map<String, AppUser>,
    ));
  }

  @override
  $AppUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $AppUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class $AppState$CopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory $AppState$CopyWith(AppState$ value, $Res Function(AppState$) then) =
      _$AppState$CopyWithImpl<$Res>;
  @override
  $Res call({AppUser? user, Set<String> pending, Map<String, AppUser> users});

  @override
  $AppUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AppState$CopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $AppState$CopyWith<$Res> {
  _$AppState$CopyWithImpl(AppState$ _value, $Res Function(AppState$) _then)
      : super(_value, (v) => _then(v as AppState$));

  @override
  AppState$ get _value => super._value as AppState$;

  @override
  $Res call({
    Object? user = freezed,
    Object? pending = freezed,
    Object? users = freezed,
  }) {
    return _then(AppState$(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      pending: pending == freezed
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as Map<String, AppUser>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppState$ implements AppState$ {
  const _$AppState$(
      {this.user,
      this.pending = const <String>{},
      this.users = const <String, AppUser>{}});

  factory _$AppState$.fromJson(Map<String, dynamic> json) =>
      _$$AppState$FromJson(json);

  @override
  final AppUser? user;
  @JsonKey()
  @override //AppTeacher? teacher,
  final Set<String> pending;
  @JsonKey()
  @override
  final Map<String, AppUser> users;

  @override
  String toString() {
    return 'AppState(user: $user, pending: $pending, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppState$ &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.pending, pending) &&
            const DeepCollectionEquality().equals(other.users, users));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(pending),
      const DeepCollectionEquality().hash(users));

  @JsonKey(ignore: true)
  @override
  $AppState$CopyWith<AppState$> get copyWith =>
      _$AppState$CopyWithImpl<AppState$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppState$ToJson(this);
  }
}

abstract class AppState$ implements AppState {
  const factory AppState$(
      {AppUser? user,
      Set<String> pending,
      Map<String, AppUser> users}) = _$AppState$;

  factory AppState$.fromJson(Map<String, dynamic> json) = _$AppState$.fromJson;

  @override
  AppUser? get user;
  @override //AppTeacher? teacher,
  Set<String> get pending;
  @override
  Map<String, AppUser> get users;
  @override
  @JsonKey(ignore: true)
  $AppState$CopyWith<AppState$> get copyWith =>
      throw _privateConstructorUsedError;
}
