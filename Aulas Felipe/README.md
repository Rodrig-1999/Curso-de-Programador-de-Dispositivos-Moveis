## Criação do primeiro app em Flutter

Para criar um aplicativo, além da função main(), precisamos de uma classe que herde de StatefulWidget ou de StatelessWidget.
- **StatelessWidget:** é uma página que não pode ser atualizada, ou seja, não tem "estado".
**Exemplo:**
`````dart
class  extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
`````

- **StatefulWidget:** é uma página que pode sofrer atualizações, é utilizada para jorgarmos valores em tela e lidar com ações do usuário.
**Exemplo:**
````dart
class ClasseSemEstado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
`````

### Widgets utilizados
Para o aplicativo da calculadora simples, utilizamos os seguintes widgets.
- **Coitainer:** serve como uma "caixa" para outro widget. Ele pode ter um parâmetro *child* e margem interna (padding).
- **TextField:** campo de texto que permite que os usuários digitem textos em um aplicativo.
- **SizedBox:** serve como espaçamento entre um widget e outro. Pode ser espaçamento horizontal e vertical.
- **DropdownButton:** botão que, quando pressionado, lista as opções criadas e permite que uma delas seja selecionada.
- **RaisedButton:** serve como um botão.
- **Column:** é um widget de layout para colocar os outros widgets um embaixo um do outro. Aceita um parâmetro children (são vários widgets).
- **Center:** serve para centralizar o widget que for passado pra ele como seu filho (child).

### Eventos (Funções) utilizadas
-**onChanged:** foi utilizado na DropdownButton para atualizar o valor escolhido.
-**onPressed:** foi utilizado no RaisedButton para realizar o cálculo.
-**setState:** utilizado **sempre** que a tela precisou ser atualizada.
