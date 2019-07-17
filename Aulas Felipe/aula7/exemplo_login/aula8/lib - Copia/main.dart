import 'package:flutter/material.dart';
import 'package:exemplo_login/pages/login.dart';
import 'dbaccess/database.dart';
import 'dbaccess/login_db_queries.dart';
import 'models/mlogin.dart';

void main() async {
  await DBCreator().initDatabase();
  LoginDbQueries.addLogin(Login(1, "felipe.benutti@sp.senac.br","123456"));
  //LoginDbQueries.getLogin("felipe.benutti@sp.senac.br", "123456");  Foi só para teste
  runApp(MainPage());
}

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
