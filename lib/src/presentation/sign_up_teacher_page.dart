import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:movie_app/src/actions/index1.dart';
import 'package:movie_app/src/models/index.dart';

class SignUpTeacherPage extends StatefulWidget {
  const SignUpTeacherPage({Key? key}) : super(key: key);

  @override
  State<SignUpTeacherPage> createState() => _SignUpTeacherPageState();
}

class _SignUpTeacherPageState extends State<SignUpTeacherPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _username = TextEditingController();
  final FocusNode _passwordNode = FocusNode();
  final FocusNode _usernameNode = FocusNode();

  void _onNext(BuildContext context) {
    if (!Form.of(context)!.validate()) {
      return;
    }
    StoreProvider.of<AppState>(context).dispatch(
      CreateTutor(
        email: _email.text,
        password: _password.text,
        username: _username.text,
        onResult: _onResult,
      ),
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
    } else if (action is CreateTutorSuccessful) {
      Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false);
    }
    //
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Builder(
          builder: (BuildContext context) {
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
                            return 'Please enter a email.';
                          } else if (!value.contains('@upt.ro')) {
                            return 'Please enter a valid email@upt.ro address.';
                          }
                          return null;
                        },
                        onFieldSubmitted: (String value) {
                          FocusScope.of(context).requestFocus(_usernameNode);
                        },
                      ),
                      TextFormField(
                        controller: _username,
                        focusNode: _usernameNode,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          hintText: 'username',
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a username.';
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
                            return 'Please enter a password.';
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
                        child: const Text('Sign Up'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const Text('Teacher'),
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
