import 'package:flutter/material.dart';

//void main() => runApp(MyApp());

//Método Principal, que é a mesma coisa do de cima, porém é aberta com chaves ao invés de seta
void main(){
  runApp(MyApp());
}

//Classe Myapp
class MyApp extends StatefulWidget{
    @override
  State<StatefulWidget> createState(){
    return _MyappState();
  }
}

//Classe MyappState que herda (extends) a classe State, que também é um widget. O underscore é usado porque a classe privada
class _MyappState extends State<MyApp>
{

//Interface #################################################
@override
Widget build(BuildContext context)
{
  return MaterialApp(
      title: "Exemplo de Classes e Objetos",
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Classes e Objetos"),
          ),
        ),
      ),
    );
  }
}