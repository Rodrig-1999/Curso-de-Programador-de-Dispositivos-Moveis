import 'package:exemplo_login/pages/login.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  TextStyle estilo = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Bem-vindo\nVocê está logado",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 35.0),
              RaisedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context, MaterialPageRoute(
                    builder: (BuildContext context) => LoginPage(),
                  ),
                  );
                },
                padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                color: Color.fromARGB(255, 1, 160, 199),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0)),
                child: Text(
                  "Deslogar",
                  textAlign: TextAlign.center,
                  style: estilo.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
