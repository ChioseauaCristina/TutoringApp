part of 'index1.dart';

@freezed
class GetUser with _$GetUser implements AppAction {
  const factory GetUser(String uid) = GetUserStart;

  const factory GetUser.successful(AppUser user) = GetUserSuccessful;

  @Implements<ErrorAction>()
  const factory GetUser.error(Object error, StackTrace stackTrace) = GetUserError;
}
