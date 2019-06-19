# Exemplo 2 - Criação de menu
**IMPORTANTE: Recomenda-se que tente refazer o exercício em casa sozinho**

## Primeira etapa
- Método principal (main).
- Método necessário para "inflar" o App(runApp). Seria para mostrar os widgets na tela.
- Importamos no pacote/biblioteca **material.dart**, que é responsável por nos fornecer recursos, atributos de cada
widget(cor de um objeto,
tamanho, alinhamento, etc). Porém, durante o curso não usaremos esse, mas sim um mais poderoso.

```dart
import 'package:flutter/material.dart';

void main() {
  runApp();
}
```

## Segunda etapa
- Usamos o widget Material.
- Criamos a classe **Scaffold**, que permite montar a estrutura básica de uma tela, adicionando itens como AppBar,
FloatingActionButton, BottomNavigationBar, Drawer, além do próprio conteúdo da tela.

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        home: Scaffold(),
      ) //Material
  ); //runApp
} //void main
`````

## Terceira etapa
- Adicionamos o widget **drawer**, que seria um menu lateral esquerdo estilo gaveta.
- Adicionamos uma lista a ele, o **ListView**.

````dart
import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        home: Scaffold(
          drawer: Drawer(
          child: ListView(),
          ), //Drawer
        ) //Scafflod
     ), //Material
  ); //runApp
} //void main
`````

## Quarta etapa
- Damos ao Drawer um "filho", o **ListView** (é uma lista, basicamente), que teve também uma criança, o **Widget**,
que seria um widget (pode ser geralmente texto, etc) personalizado,
que colocamos como queremos, semelhante ao container, porém, há uma classe especifica para container no flutter.
- Adicionamos o **appBar** que seria a barra colorida que geralmente carrega o nome da empresa, o personalizamos para que ele
fosse da cor roxa (ele seria o background do texto).
Damos a ele um texto (ex: o próprio nome da empresa) e personalizamos ele para que ficasse no centro.
- Embaixo dele há um campo de texto, o **Text Field**

````dart
import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        home: Scaffold(
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
              ], //Widget
            ), //ListView
          ), //Drawer

          appBar: AppBar(
            title: Text("MonFlowers"),
            centerTitle: true,
            backgroundColor: Colors.deepPurpleAccent,
          ),
          body: TextField(
          ), //body
      ) //Material
  ); //runApp
} //void main
`````

### Quinta etapa
- Colocamos o **UserAccountsDrawerHeader**, que é um widget específico para informações de usúario, quando ele está logado.
- Nós o decoramos pintando-o de um tipo de roxo, o resto permaneceu branco
- As informações que damos foi o nome, email e foto da pessoa.

````dart
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

          appBar: AppBar(
            title: Text("MonFlowers"),
            centerTitle: true,
            backgroundColor: Colors.deepPurpleAccent,
          ),
          body: TextField(
          ),//body
      )//Material
  ); //runApp
} //void main
`````

### Sexta etapa
- Adicionamos tópicos na lista que aparecerá no menu e o nomeamos.
- Foi nossa última etapa

```dart
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

              ], //Widget
            ), //UserAccountsDrawerHeader
          ), //ListView

          appBar: AppBar(
            title: Text("MonFlowers"),
            centerTitle: true,
            backgroundColor: Colors.deepPurpleAccent,
          ),
          body: TextField(
          ), //TextField
      ), //Scaffold
    ), ///Material
  ); //runApp
} //void main
```
