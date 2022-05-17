import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/src/models/index.dart';

part 'index1.freezed.dart';
part 'login.dart';
part 'get_current_user.dart';
part 'create_user.dart';
part 'logout.dart';
part 'get_user.dart';
part 'get_tutor.dart';
part 'create_tutor.dart';
part 'login_tutor.dart';
part 'get_current_tutor.dart';

abstract class AppAction {}

abstract class ErrorAction implements AppAction {
  Object get error;

  StackTrace get stackTrace;
}

abstract class UserAction extends AppAction {
  AppUser? get user;
}

abstract class PendingAction {
  String get pendingId;
}

abstract class ActionStart implements PendingAction {}

abstract class ActionDone implements PendingAction {}

typedef ActionResult = void Function(AppAction action);
