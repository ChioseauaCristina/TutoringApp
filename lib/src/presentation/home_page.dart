import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:movie_app/src/actions/index1.dart';
import 'package:movie_app/src/containers/home_page_container.dart';
import 'package:movie_app/src/models/index.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return HomePageContainer(
      builder: (BuildContext context, AppState state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('A soon to be menu'),
            leading: IconButton(
              icon: const Icon(Icons.power_settings_new),
              onPressed: () {
                StoreProvider.of<AppState>(context).dispatch(const Logout());
              },
            ),
          ),
          body: Center(
            child: SizedBox(
              width: 250,
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
                child: AnimatedTextKit(
                  animatedTexts: <FadeAnimatedText>[
                    FadeAnimatedText(
                      'Work in progress.',
                    ),
                    FadeAnimatedText('pls DND ;('),
                    FadeAnimatedText('The developers are sleeping...'),
                  ],
                  onTap: () {
                    if (kDebugMode) {
                      print('Tap Event');
                    }
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
