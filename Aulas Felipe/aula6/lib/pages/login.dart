import 'package:exemplo_login/pages/home.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextStyle estilo = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  OutlineInputBorder oiBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(20.0),
    borderSide: BorderSide(
      color: Color.fromARGB(255, 1, 160, 199),
    ),
  );

  //GlobalKey é uma variavel (objeto) que serve para "gerenciar" o estado da validação dos campos do formulário
  //É usado np Widget "Form" e no "onPressed" do botão
  GlobalKey<FormState> chaveForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          //Era um Container e virou um Form para VALIDAR as caixas de texto
          Form(
            child: Padding(
              padding: EdgeInsets.all(36.0),
              child: Column(
                //Alinhamento para o eixo principal, neste caso, vertical
                mainAxisAlignment: MainAxisAlignment.center,
                //Alinhamento para o eixo contrário, neste caso, horizontal
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                SizedBox(
                   height: 155.0,
                   child: Image.asset(
                     "assets/logo.png",
                     fit: BoxFit.contain,
                   ),
                 ),
                 SizedBox(height: 45.0),
                 TextFormField(
                   validator: (String texto) {
                     if (texto.isEmpty){
                       return "Por favor, digite o usuário.";
                     }
                   },
                   obscureText: false,
                   style: estilo,
                   decoration: InputDecoration(
                     contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                     hintText: "Usuário ou E-mail",
                     border: oiBorder,
                     enabledBorder: oiBorder,
                   ),
                 ),
                SizedBox(height: 20.0),
                TextField(
                  obscureText: true,
                  style: estilo,
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
                          context, MaterialPageRoute(
                          builder: (BuildContext context) => HomePage(),
                        ),
                      );
                    }
                  },
                  padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  color: Color.fromARGB(255, 1, 160, 199),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0)),
                  child: Text(
                    "Logar",
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
        ],
      ),
    );
  }
}
