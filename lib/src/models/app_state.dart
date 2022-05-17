part of 'index.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    AppUser? user,
    //AppTeacher? teacher,
    @Default(<String>{}) Set<String> pending,
    @Default(<String, AppUser>{}) Map<String /*uid*/, AppUser> users,
  }) = AppState$;

  factory AppState.fromJson(Map<dynamic, dynamic> json) => _$AppStateFromJson(Map<String, dynamic>.from(json));
}
