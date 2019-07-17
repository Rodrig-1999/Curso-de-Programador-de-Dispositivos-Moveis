import 'package:flutter/material.dart';
import 'package:pizzaria/pages/splash_screen.dart';

void main() => runApp(MainPage());

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //O MaterialApp é a base dos aplicativos
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pizzaria Ma´que Pizza",
      home: SplashScreenPage(),
    );
  }
}
