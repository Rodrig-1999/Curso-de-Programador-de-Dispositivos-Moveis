# SENAC
Curso Desenvolvimento de Aplicativos Móveis
Usando **DART** e **FLUTTER**

## Aula 1 - Váriaveis

### Tipos de variáveis
- String - textos
- int - números inteiros
- double - numeros decimais


----------------------------------------------------------------------------------------------------------------------------------------

### Práticas

```
1)
//Colocamos pra imprimir na tela algumas coisinhas e criamos algumas variáveis basicas, devemos lembrar que quando não colocamos o tipo de variavel,
ela é configurada para ser sempre o que teve depois do igual

// main = principal
/* Variavel: Um valor (número, texto, valor lógico, etc) armazenado na memória ram do computador, que perde seu valor sempre que o PC é desligado. Seu valor pode ser modificado a qualquer momento. */

void main() {
  print("Olá World");
  print("Olá Rodrigo");
  
  var nome = "Juliet"; //Como não foi especificado o "String", a variavel já "salva" que ela deve ser sempre texto
  var numero = "1";
  print("Bom dia, " + nome);
  
  print ("Numero: $numero");
  
}

´´´

------------------------------------------------------------

```
2)
//Cálculo simples com casas decimais

void main() {
 var sorteio = 5;
  sorteio = 5 - 1;
  sorteio = sorteio * 2;
  print (sorteio);
  
 //String = texto
 String nome, sobrenome;
  nome = "Oliver";
  sobrenome = "Queen";
  print("Hello, $nome $sobrenome");
  
 //double = números decimais (com casas)
  double altura, peso, imc;
  altura = 1.60;
  peso = 53;
  imc = peso / (altura * altura);
  print ("Seu imc é $imc");
}
```

------------------------------------------------------------

```
3)
//Criar variaveis pelo nome, sobrenome, email e ano de nascimento. Calcular a idade e mostrar ao final uma mensagem com todos esses dados.

void main() {
  String nome, sobrenome, email;
  nome = "Rodrigo";
  sobrenome = "Santos";
  email = "rodrigo.santoss23sv@gmail.com";
      
  int anonascimento, anoatual, idade;
  anonascimento = 2002;
 	idade = 2019 - anonascimento;
 
  print('Olá, $nome $sobrenome,\no e-mail fornecido por você foi "$email".\nVocê tem $idade anos.');
}
```
