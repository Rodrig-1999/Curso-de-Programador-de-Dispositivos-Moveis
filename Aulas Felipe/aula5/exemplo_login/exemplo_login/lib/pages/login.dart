import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(36.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, //horizontal
            mainAxisAlignment: MainAxisAlignment.center, //vertical
            children: <Widget>[
              SizedBox(
                height: 155.0,
                child: Image.asset(
                  "assets/logo.png",
                  fit: BoxFit.contain,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
