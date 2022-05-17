import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:movie_app/src/models/index.dart';
import 'package:redux/redux.dart';

class TeachersContainer extends StatelessWidget {
  const TeachersContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<Map<String, AppUser>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Map<String, AppUser>>(
      converter: (Store<AppState> store) => store.state.users,
      builder: builder,
    );
  }
}
