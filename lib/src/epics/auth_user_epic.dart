import 'package:movie_app/src/actions/index1.dart';
import 'package:movie_app/src/data/auth_base_api.dart';
import 'package:movie_app/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
// ignore: depend_on_referenced_packages
import 'package:rxdart/rxdart.dart';

class AuthEpic {
  AuthEpic(this._authApi);

  final AuthApiBase _authApi;

  Epic<AppState> getEpics() {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, LoginStart>(_loginStart),
      TypedEpic<AppState, GetCurrentUserStart>(_getCurrentUserStart),
      TypedEpic<AppState, CreateUserStart>(_createUserStart),
      TypedEpic<AppState, LogoutStart>(_logoutStart),
      TypedEpic<AppState, GetUserStart>(_getUserStart),

      TypedEpic<AppState, LoginTutorStart>(_loginTutorStart),
      TypedEpic<AppState, GetCurrentTutorStart>(_getCurrentTutorStart),
      TypedEpic<AppState, CreateTutorStart>(_createTutorStart),
      TypedEpic<AppState, GetTutorStart>(_getTutorStart),
    ]);
  }

  Stream<AppAction> _loginStart(Stream<LoginStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((LoginStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.login(email: action.email, password: action.password))
          .map<Login>($Login.successful)
          .onErrorReturnWith($Login.error)
          .doOnData(action.onResult);
    });
  }

  Stream<AppAction> _loginTutorStart(Stream<LoginTutorStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((LoginTutorStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.loginTutor(email: action.email, password: action.password))
          .map<LoginTutor>($LoginTutor.successful)
          .onErrorReturnWith($LoginTutor.error)
          .doOnData(action.onResult);
    });
  }

  Stream<AppAction> _getCurrentUserStart(Stream<GetCurrentUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetCurrentUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.getCurrentUser())
          .map<GetCurrentUser>($GetCurrentUser.successful)
          .onErrorReturnWith($GetCurrentUser.error);
    });
  }

  Stream<AppAction> _getCurrentTutorStart(Stream<GetCurrentTutorStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetCurrentTutorStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.getCurrentTutor())
          .map<GetCurrentTutor>($GetCurrentTutor.successful)
          .onErrorReturnWith($GetCurrentTutor.error);
    });
  }

  Stream<AppAction> _createUserStart(Stream<CreateUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((CreateUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.create(email: action.email, password: action.password, username: action.username))
          .map<CreateUser>($CreateUser.successful)
          .onErrorReturnWith($CreateUser.error)
          .doOnData(action.onResult);
    });
  }

  Stream<AppAction> _createTutorStart(Stream<CreateTutorStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((CreateTutorStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.create(email: action.email, password: action.password, username: action.username))
          .map<CreateTutor>($CreateTutor.successful)
          .onErrorReturnWith($CreateTutor.error)
          .doOnData(action.onResult);
    });
  }

  Stream<AppAction> _logoutStart(Stream<LogoutStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((LogoutStart actions) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.logOut())
          .mapTo<Logout>(const Logout.successful())
          .onErrorReturnWith(Logout.error);
    });
  }

  Stream<AppAction> _getUserStart(Stream<GetUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.getUser(action.uid))
          .map<GetUser>($GetUser.successful)
          .onErrorReturnWith($GetUser.error);
    });
  }

  Stream<AppAction> _getTutorStart(Stream<GetTutorStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetTutorStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.getTutor(action.uid))
          .map<GetTutor>($GetTutor.successful)
          .onErrorReturnWith($GetTutor.error);
    });
  }
}
