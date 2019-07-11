import 'package:exemplo_login/pages/login.dart';
import'package:flutter/material.dart';

void main() => runApp(MainPage());

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exemplo de Login",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(),
    ); //MaterialApp
  }
}
