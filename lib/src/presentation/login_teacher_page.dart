import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:movie_app/src/actions/index1.dart';
import 'package:movie_app/src/containers/pending_container.dart';
import 'package:movie_app/src/models/index.dart';

class LoginTeacherPage extends StatefulWidget {
  const LoginTeacherPage({Key? key}) : super(key: key);

  @override
  State<LoginTeacherPage> createState() => _LoginTeacherPageState();
}

class _LoginTeacherPageState extends State<LoginTeacherPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final FocusNode _passwordNode = FocusNode();

  void _onNext(BuildContext context) {
    if (!Form.of(context)!.validate()) {
      return;
    }
    StoreProvider.of<AppState>(context).dispatch(
      LoginTutor.start(email: _email.text, password: _password.text, onResult: _onResult),
    );
  }

  void _onResult(AppAction action) {
    if (action is ErrorAction) {
      final Object error = action.error;

      if (error is FirebaseAuthException) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error.message ?? '')));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$error')));
      }

      if (kDebugMode) {
        print(action.error);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: PendingContainer(
          builder: (BuildContext context, Set<String> pending) {
            if (pending.contains(LoginTutor.pendingKey)) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return SafeArea(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      TextFormField(
                        controller: _email,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        autofocus: true,
                        decoration: const InputDecoration(
                          hintText: 'email@upt.ro',
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your @upt.ro email';
                          } else if (!value.contains('@upt.ro')) {
                            return 'Please enter a valid email address';
                          }
                          return null;
                        },
                        onFieldSubmitted: (String value) {
                          FocusScope.of(context).requestFocus(_passwordNode);
                        },
                      ),
                      TextFormField(
                        controller: _password,
                        focusNode: _passwordNode,
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.done,
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: 'password',
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          } else if (value.length < 6) {
                            return 'Please enter a password longer than 6 characters.';
                          }
                          return null;
                        },
                        onFieldSubmitted: (String value) {
                          _onNext(context);
                        },
                      ),
                      const SizedBox(height: 16),
                      TextButton(
                        onPressed: () => _onNext(context),
                        child: const Text('Login'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/signUpTeacher');
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const Text('teacher'),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
