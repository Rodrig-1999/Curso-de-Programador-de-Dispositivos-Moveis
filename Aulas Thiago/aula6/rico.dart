import 'package:flutter/material.dart';

class Rico extends StatefulWidget {
  @override
  _RicoState createState() => _RicoState();
}

//Classe interna do tipo State, que recebe a Class Rico
class _RicoState extends State<Rico> {

  int _contador = 0;

  void _maisGrana(){
    setState(() {
      //método responsáel pela atualização(valores) da nossa tela
      _contador = _contador + 10;
    });
  }


  @override
  Widget build(BuildContext context) {
    //Cria a tela(ui)
    return Scaffold(
      appBar: AppBar(
        title: Text("Rico App",
          style: TextStyle(
            color: Colors.white
          ),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: <Widget>[
              //Título do App
              Expanded(
                child: Center(
                  child: Text("Venha ficar rico!\nA cada clique, nós te damos 10 reais",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  ),
                ),
              ),

              //Valor em dinheiro
              Expanded(
                child: Center(
                  child: Text("R\$ $_contador",
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w900,
                    color: _contador >= 1000 ? Colors.red : Colors.lightGreen,
                  ),
                  ),
                ),
              ),

              //Botão de ação
              Expanded(
                child: Center(
                  child: FlatButton(
                    onPressed: _maisGrana,
                    color: Colors.blueAccent,
                    textColor: Colors.white,
                    child: Text("Mais grana!!",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
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
