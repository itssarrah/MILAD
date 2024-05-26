import 'package:flutter/material.dart';
import 'package:meelad/screens/chooserole.dart';
import 'package:meelad/screens/landingpage.dart';
import 'package:meelad/screens/signupgeny.dart';
import 'package:meelad/screens/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MeelaD',
      theme: ThemeData(),
      initialRoute: '/',
      routes: {
        '/': (context) => const Landingpage(),
        '/chooserole': (context) => RoleChoice(),
        // '/landingpage': (context) => Landingpage(),
        '/signup': (context) => SignupGeny(),
      },
    );
  }
}
