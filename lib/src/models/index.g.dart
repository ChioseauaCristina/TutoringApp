// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppUser$ _$$AppUser$FromJson(Map<String, dynamic> json) => _$AppUser$(
      uid: json['uid'] as String,
      email: json['email'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$$AppUser$ToJson(_$AppUser$ instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'username': instance.username,
    };

_$AppState$ _$$AppState$FromJson(Map<String, dynamic> json) => _$AppState$(
      user: json['user'] == null
          ? null
          : AppUser.fromJson(json['user'] as Map<String, dynamic>),
      pending: (json['pending'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toSet() ??
          const <String>{},
      users: (json['users'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, AppUser.fromJson(e as Map<String, dynamic>)),
          ) ??
          const <String, AppUser>{},
    );

Map<String, dynamic> _$$AppState$ToJson(_$AppState$ instance) =>
    <String, dynamic>{
      'user': instance.user,
      'pending': instance.pending.toList(),
      'users': instance.users,
    };
