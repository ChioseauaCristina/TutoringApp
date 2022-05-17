import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:movie_app/src/models/index.dart';
import 'package:redux/redux.dart' show Store;

class TeacherContainer extends StatelessWidget {
  const TeacherContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<AppUser?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppUser?>(
      converter: (Store<AppState> store) => store.state.user,
      builder: builder,
    );
  }
}
