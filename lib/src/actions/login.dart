part of 'index1.dart';

const String _kLoginPendingId = 'Login';

@freezed
class Login with _$Login implements AppAction {
  @Implements<ActionStart>()
  const factory Login.start({
    required String email,
    required String password,
    required ActionResult onResult,
    @Default(_kLoginPendingId) String pendingId,
  }) = LoginStart;

  @Implements<UserAction>()
  @Implements<ActionDone>()
  const factory Login.successful(
    AppUser user, [
    @Default(_kLoginPendingId) String pendingId,
  ]) = LoginSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory Login.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kLoginPendingId) String pendingId,
  ]) = LoginError;

  static String get pendingKey => _kLoginPendingId;
}
