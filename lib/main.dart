// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_app/login_screen.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new LoginScreen(),
      title: new Text(
        'AlimentApp',
        style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.white,
            shadows: [
              Shadow(
                blurRadius: 20.0,
                color: Colors.black,
                offset: Offset(5.0, 5.0),
              ),
            ]),
      ),
      image: new Image.asset('assets/img/splash-logo.jpg'),
      photoSize: 100.0,
      backgroundColor: Colors.blueAccent,
      loadingText: new Text(
        'Seu App de alimentação saudável',
        style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.white,
            shadows: [
              Shadow(
                blurRadius: 20.0,
                color: Colors.black,
                offset: Offset(5.0, 5.0),
              ),
            ]),
      ),
      loaderColor: Colors.white,
    );
  }
}