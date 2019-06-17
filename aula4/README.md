import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MeuAppState();
  }
}

class _MeuAppState extends State<MeuApp>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Minha Calculadora",
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Minha Calculadora")),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Text("Aqui serão feitas as operações"),
              TextField(
                decoration: InputDecoration(labelText: "Digite o primeiro número", labelStyle: TextStyle(color: Colors.deepPurple), focusedBorder: UnderlineInputBorder(),),
                keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
              ),
              TextField(
                decoration: InputDecoration(labelText: "Digite o segundo número", labelStyle: TextStyle(color: Colors.deepPurple), focusedBorder: UnderlineInputBorder(),),
                keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
              )
            ],
          ),
        ),
      ),
    );
  }
}
