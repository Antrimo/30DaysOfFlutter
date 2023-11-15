import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: Text(
              'Login Page',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontStyle: FontStyle.italic),
            ),
          ),
        ));
  }
}
