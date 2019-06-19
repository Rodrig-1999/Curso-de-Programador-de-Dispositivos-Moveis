import 'package:flutter/material.dart';
//void main() => runApp(MyApp());

//Método Principal, que é a mesma coisa do de cima, porém é aberta com chaves ao invés de seta
void main() {
  runApp(MyApp());
  //Instanciar a Classe Pessoa (como se fosse uma cópia)
  Pessoa pessoa1 = new Pessoa();
  pessoa1.nome = "Andy";
  pessoa1.curso = "Prog. Disp. Móveis";
  pessoa1.identidade_genero = "Neutro";
  pessoa1.ano_nasc = 2002;
//Chamada da função/método que será executado
  pessoa1.calcular_idade();
}


//Classe Pessoa
//Classe é um modelo para um objeto, a planta na construção da casa, a forma do bolo, etc
class Pessoa{
//Atributos da classe, as características ou informações que o objeto irá armazenar
  String nome;
  String curso;
  String identidade_genero;
  int idade;
  int ano_nasc;

  void mostrar(){
    print("O indivíduo $nome realizou uma matrícula no curso $curso");
  }

  void calcular_idade(){
    idade = 2019 - ano_nasc;

    if(identidade_genero == "Masculino") {
      print("O $nome nasceu em $ano_nasc e tem $idade anos");
    }else if(identidade_genero == "Feminino") {
      print("A $nome nasceu em $ano_nasc e tem $idade anos");
    }else if(identidade_genero == "Neutro"){
      print("$nome nasceu em $ano_nasc e tem $idade anos");
    }
  }
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
