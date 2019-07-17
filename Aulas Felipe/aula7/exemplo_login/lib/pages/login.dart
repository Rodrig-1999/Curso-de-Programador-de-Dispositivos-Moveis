import 'package:exemplo_login/pages/home.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //Criando objetos para facilitar a leitura e o uso dentro dos Widgets.
  TextStyle estilo = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  OutlineInputBorder oiBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(30.0),
    borderSide: BorderSide(
      color: Color.fromARGB(255, 1, 160, 199),
    ),
  );

  //GlobalKey é uma variável (objeto) que serve para "gerenciar" o estado
  // da validação dos campos do formulário.
  // É usado no Widget "Form" e no "onPressed" do botão
  GlobalKey<FormState> chaveForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          //Era um Container e virou um Form para VALIDAR as caixas de texto
          Form(
            key: chaveForm,
            child: Padding(
              padding: EdgeInsets.all(36.0),
              child: Column(
                //Alinhamento para o eixo principal da coluna, neste caso, vertical
                mainAxisAlignment: MainAxisAlignment.center,
                //Alinhamento para o eixo contrário da coluna, ou seja, horizontal
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 155.0,
                    //Image.asset: esse Widget serve para mostrar imagens
                    // a partir de arquivos, e não da internet como antes
                    child: Image.asset(
                      "assets/logo.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 45.0),
                  TextFormField(
                    validator: (String texto) {
                      if (texto.isEmpty){
                        return "Por favor, digite o usuário!";
                      }
                    },
                    obscureText: false,
                    style: estilo,
                    //InputDecoration serve para deixar o TextField personalizado
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                      hintText: "Usuário ou E-mail",
                      border: oiBorder,
                      enabledBorder: oiBorder,
                    ),
                  ),
                  SizedBox(height: 15.0),
                  //Antes era TextField, agora virou TextFormField.
                  //Isso serve para VALIDAR o campo
                  TextFormField(
                    validator: (String texto){
                      if (texto.isEmpty){
                        return "Por favor, digite a senha!";
                      }
                      if (texto.length < 6){
                        return "A senha deve conter no mínimo 6 caracteres";
                      }
                    },
                    obscureText: true,
                    style: estilo,
                    //InputDecoration serve para deixar o TextField personalizado
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                      hintText: "Senha",
                      border: oiBorder,
                      enabledBorder: oiBorder,
                    ),
                  ),
                  SizedBox(height: 35.0),
                  RaisedButton(
                    onPressed: () {
                      if(chaveForm.currentState.validate()){
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => HomePage(),
                          ),
                        );
                      }
                    },
                    padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                    color: Color.fromARGB(255, 1, 160, 199),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Text(
                      "Logar",
                      textAlign: TextAlign.center,
                      style: estilo.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
