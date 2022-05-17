import 'package:movie_app/src/actions/index1.dart';
import 'package:movie_app/src/models/index.dart';
import 'package:redux/redux.dart';

Reducer<AppState> authReducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, LoginSuccessful>(_loginSuccessful),
  TypedReducer<AppState, GetCurrentUserSuccessful>(_getCurrentUserSuccessful),
  TypedReducer<AppState, CreateUserSuccessful>(_createUserSuccessful),
  TypedReducer<AppState, LogoutSuccessful>(_logoutSuccessful),
  TypedReducer<AppState, GetUserSuccessful>(_getUserSuccessful),

  TypedReducer<AppState, LoginTutorSuccessful>(_loginTutorSuccessful),
  TypedReducer<AppState, GetCurrentTutorSuccessful>(_getCurrentTutorSuccessful),
  TypedReducer<AppState, CreateTutorSuccessful>(_createTutorSuccessful),
  TypedReducer<AppState, GetTutorSuccessful>(_getTutorSuccessful),
]);

AppState _loginSuccessful(AppState state, LoginSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _loginTutorSuccessful(AppState state, LoginTutorSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _getCurrentUserSuccessful(AppState state, GetCurrentUserSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _getCurrentTutorSuccessful(AppState state, GetCurrentTutorSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _createUserSuccessful(AppState state, CreateUserSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _createTutorSuccessful(AppState state, CreateTutorSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _logoutSuccessful(AppState state, LogoutSuccessful action) {
  return state.copyWith(user: null);
}

AppState _getUserSuccessful(AppState state, GetUserSuccessful action) {
  return state.copyWith(
    users: <String, AppUser>{
      ...state.users,
      action.user.uid: action.user,
    },
  );
}

AppState _getTutorSuccessful(AppState state, GetTutorSuccessful action) {
  return state.copyWith(
    users: <String, AppUser>{
      ...state.users,
      action.user.uid: action.user,
    },
  );
}
