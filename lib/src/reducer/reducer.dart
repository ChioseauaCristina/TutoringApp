import 'package:flutter/foundation.dart';
import 'package:movie_app/src/actions/index1.dart';
import 'package:movie_app/src/models/index.dart';
import 'package:movie_app/src/reducer/auth_reducer.dart';
import 'package:redux/redux.dart';

AppState reducer(AppState state, dynamic action) {
  if (action is! AppAction) {
    throw ArgumentError('All actions should implement AppActions');
  }

  if (kDebugMode) {
    print(action);
  }
  final AppState newState = _reducer(state, action);
  if (kDebugMode) {
    print(newState);
  }
  return newState;
}

Reducer<AppState> _reducer = combineReducers<AppState>(<Reducer<AppState>>[
  authReducer,
  TypedReducer<AppState, ActionStart>(_actionStart),
  TypedReducer<AppState, ActionDone>(_actionDone),
]);

AppState _actionStart(AppState state, ActionStart action) {
  return state.copyWith(pending: <String>{...state.pending, action.pendingId});
}

AppState _actionDone(AppState state, ActionDone action) {
  return state.copyWith(pending: <String>{...state.pending}..remove(action.pendingId));
}
