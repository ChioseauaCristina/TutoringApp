import 'package:flutter/material.dart';

class RolePage extends StatelessWidget {
  const RolePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: (){
                Navigator.pushNamed(context, '/login');
              },
              child: const Text('Student'),
            ),

            TextButton(
              onPressed: (){
                Navigator.pushNamed(context, '/loginTeacher');
              },
              child: const Text('Admin'),
            ),
          ],
        ),
      ),
    );
  }
}
