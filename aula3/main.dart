import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        home: Scaffold(
          drawer: Drawer(
            child: ListView(
              children: <Widget>[

                UserAccountsDrawerHeader(
                  accountName: Text("Rodrigo Paulo",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  accountEmail: Text("rodrigo.santoss23sv@gmail.com"),
                  currentAccountPicture: Image.network('https://avatars1.githubusercontent.com/u/49247264?s=400&u=356df2582d791e21419a99050055253840e396ce&v=4'),
                  decoration: BoxDecoration(color: Colors.deepPurple),
                ),

                ListTile(
                  title: Text("Meus pedidos"),
                ),
                ListTile(
                  title: Text("Novidades semanais"),
                ),

              ],
            ),
          ),

          appBar: AppBar(
            title: Text("MonFlowers"),
            centerTitle: true,
            backgroundColor: Colors.deepPurpleAccent,
          ),
          body: TextField(
          ),
      )
  ); // runApp
} //void main