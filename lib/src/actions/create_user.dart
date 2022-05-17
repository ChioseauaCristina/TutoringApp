part of 'index1.dart';

@freezed
class CreateUser with _$CreateUser implements AppAction {
  const factory CreateUser({
    required String email,
    required String password,
    required String username,
    required ActionResult onResult,
  }) = CreateUserStart;

  const factory CreateUser.successful(AppUser user) = CreateUserSuccessful;

  @Implements<ErrorAction>()
  const factory CreateUser.error(Object error, StackTrace stackTrace) = CreateUserError;
}
