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
  double numero1;
  double numero2;
  String operacao;
  String resultado = "";

  void calcular(double n1, double n2, String operacao){
    double resposta;

    if(operacao == "+"){
      resposta = n1 + n2;
    }else if(operacao == "-"){
      resposta = n1 - n2;
    }else if(operacao == "/"){
      resposta = n1 / n2;
    }else if(operacao == "*"){
      resposta = n1 * n2;
    }else{
      resposta = 0;
    }

    resultado = "O resultado da conta é: $resposta";
  }

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
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Text("Aqui serão feitas as operações"),

              TextField(
                decoration: InputDecoration(
                  labelText: "Digite o primeiro número",
                  labelStyle: TextStyle(color: Colors.deepPurple),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)
                  ),
                ),
                style: TextStyle(color: Colors.black),
                keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                  onChanged: (textoDigitado) {
                    setState(() {
                      numero1 = double.parse(textoDigitado);
                    });
                  }
              ),
              //Text(numero1)
              TextField(
                decoration: InputDecoration(
                  labelText: "Digite o segundo número",
                  labelStyle: TextStyle(color: Colors.deepPurple),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)
                  ),
                ),
                keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                onChanged: (textoDigitado) {
                  setState(() {
                    //double.parse faz a conversão de String para double
                    numero2 = double.parse(textoDigitado);
                    //print(numero2);
                  });
                }
              ),
              DropdownButton<String>(
                items: [
                  DropdownMenuItem(
                    child: Text("+"),
                    value: "+",
                  ),
                  DropdownMenuItem(
                    child: Text("-"),
                    value: "-",
                  ),
                  DropdownMenuItem(
                   child: Text("*"),
                   value: "*",
                  ),
                  DropdownMenuItem(
                   child: Text("/"),
                   value: "/",
                  ),
                ],
                onChanged: (valor){
                  setState(() {
                  operacao = valor;
                  });
                },
                hint: Text("Escolha uma operação"),
                value: operacao,
              ),
              SizedBox(height: 15.0),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    calcular(numero1, numero2, operacao);
                  });
                },
                child: Text("Calcular"),),
              SizedBox(height: 30.0),
              Text(resultado),
            ],
          ),
        ),
      ),
    );
  }
}
