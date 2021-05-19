import 'package:flutter/material.dart';
import 'package:opentrivia/ui/pages/home.dart';
import 'package:opentrivia/ui/pages/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QUIZ HUB',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.indigo,
          fontFamily: "Montserrat",
          buttonColor: Colors.pink,
          buttonTheme: ButtonThemeData(
              buttonColor: Colors.pink,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              textTheme: ButtonTextTheme.primary)),
      home: splashscreen(),
    );
  }
}
