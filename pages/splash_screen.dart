import 'package:flutter/material.dart';

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Widget usado para EMPILHAR outros widgets
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 186, 92),
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 242, 126, 94),
                Color.fromARGB(255, 242, 255, 255),
                Color.fromARGB(255, 242, 242, 29),
              ],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              )
            ),
          )
        ],
      ),
    );
  }
}
