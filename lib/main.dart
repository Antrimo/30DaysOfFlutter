import 'package:app/pages/homepage.dart';
import 'package:app/pages/loginpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        initialRoute: "/home",
        routes: {
          "/login": (context) => const Loginpage(),
          "/home": (context) => const Homepage(),
        });
  }
}
