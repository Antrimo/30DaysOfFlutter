import 'package:app/pages/homepage.dart';
import 'package:app/pages/loginpage.dart';
import 'package:app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        darkTheme: ThemeData(
          brightness: Brightness.light,
        ),
        theme: ThemeData(
          fontFamily: GoogleFonts.lato().fontFamily,
        ),
        initialRoute: "/login",
        routes: {
          Routes.loginRoute: (context) => const Loginpage(),
          Routes.homeRoute: (context) => const Homepage(),
        });
  }
}
