import 'package:movie_app/src/data/auth_api.dart';
import 'package:movie_app/src/epics/auth_user_epic.dart';
import 'package:movie_app/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';

class AppEpic {
  AppEpic(this._authApi);

  final AuthApi _authApi;

  Epic<AppState> getEpics() {
    return combineEpics(<Epic<AppState>>[
      AuthEpic(_authApi).getEpics(),
    ]);
  }
}
