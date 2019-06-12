# Exemplo 1 - Widgets Básicos

## Primeira etapa
- Método principal (main).
- Método necessário para "inflar" o App(runApp). Seria para mostrar os widgets na tela.
- Importamos no pacote/biblioteca **material.dart**, que é responsável por nos fornecer recursos, atributos de cada widget(cor de um objeto,
tamanho, alinhamento, etc). Porém, durante o curso não usaremos esse, mas sim um mais poderoso.

```dart
import 'package:flutter/material.dart';

void main() {
  runApp();
}
```

## Segunda etapa
- Usamos um container(Center), o widget Material
- Alteramos sua cor do fundo, para um azul.

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(
      new Material(
        color: Colors.lightBlue,
      ), //Material
  ) //runApp
} //void main
```

## Terceira etapa
- Adicionamos outra propriedade ao container, que seria uma espécie de filho (semelhante ao <div>)
- Colocamos nesse "filho" um texto
- Atribuimos coisas a esse tetxo, para ficar como queriamos, no centro da tela, com determinado tamanho e cor preta.

import 'package:flutter/material.dart';

void main() {
  runApp(
      new Material(
          color: Colors.lightBlue,
          child: new Center(
            child: new Text("Hello World", textDirection: TextDirection.ltr,
              style: new TextStyle(fontSize: 40, color: Colors.black),
            ), //Text
          ) //Child
      ) //Material
  ) // runApp
} //void main
