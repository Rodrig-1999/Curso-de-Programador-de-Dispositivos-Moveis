# SENAC
Curso Desenvolvimento de Aplicativos Móveis
Usando **DART** e **FLUTTER**

## Aula 1 - Váriaveis

### Tipos de variáveis
- **String** - textos
- **int** - números inteiros
- **double** - numeros decimais

------------------------------------------------------------------------------------------------------------------------

### Práticas

**1)**
```
//Colocamos pra imprimir na tela algumas coisinhas e criamos algumas variáveis basicas,
devemos lembrar que quando não colocamos o tipo de variavel,
ela é configurada para ser sempre o que teve depois do igual

// main = principal
/* Variavel: Um valor (número, texto, valor lógico, etc)
armazenado na memória ram do computador,que perde seu valor
sempre que o PC é desligado. Seu valor pode ser modificado a qualquer momento. */

void main() {
  print("Olá World");
  print("Olá Rodrigo");
  
  var nome = "Juliet"; //Como não foi especificado o "String", a variavel já "salva" que ela deve ser sempre texto
  var numero = "1";
  print("Bom dia, " + nome);
  
  print ("Numero: $numero");
  
}
```
------------------------------------------------------------

**2)**
```
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

**3)**
```
//Criar variaveis pelo nome, sobrenome, email e ano de nascimento. Calcular a idade e mostrar ao final
uma mensagem com todos esses dados.

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

## Aula 2

**${renda_pessoa.toStringAsFixed(2)}**

O método toStringAsFixed() foi usado para formatar as casas (2) decimais da variável(renda_pessoa) double.

```dart
void main() {
  String nome, sobrenome, email, senha, cpf, endereco, sexo, celular, curso, nome_social;
  int ano_nasc, idade, qtd_moradores;
  double renda_familiar, renda_pessoa;
 

  nome = "Thiago Antonio" ;
  sobrenome = "dos Santos Oliveira";
  nome_social = "";
  email = "braddock@hotmail.com";
  senha = "123changeja" ;
  cpf = "111.222.333-66";
  endereco = "Rua dos Alfeneiros 9.3/4";
  sexo = "masculino";
  celular = "(19)99666-0000";
  curso = "Programador de Disp. Móveis";
  ano_nasc = 1989;
  idade = 2019 - ano_nasc;
  qtd_moradores = 2;
  renda_familiar = 5355.22;
  renda_pessoa = renda_familiar / qtd_moradores;

  print("**************************");
  print("Confirmação de Cadastro");
  print("**************************");
  print("\nNome: $nome $sobrenome");

  if (nome_social != "")
  {
    print("Nome Social: $nome_social");
  }

  print("E-mail: $email");
  print("Sexo: $sexo");
  print("Celular: $celular");
  print("Ano de Nascimento: $ano_nasc");
  print("Idade: $idade");
  print("CPF: $cpf");
  print("\n**************************");
  print("Informações SENAC");
  print("**************************");
  print("\nCurso: $curso");
  print("Endereço: $endereco");
  print("Moradores na mesma residência: $qtd_moradores");
  print("Renda Familiar: R\$ $renda_familiar");
  print("Renda por pessoa: R\$ ${renda_pessoa.toStringAsFixed(2)}");
 
}

```

### Condição Lógica IF

O IF serve para determinar se um bloco de instruções **deve** ou **não** ser executado, pode-se dizer que sempre que for necessário **testar** algum valor usaremos o *if*.

### Operadores Lógicos

- == *Igualdade*
- != *Diferente*
- \>= *Maior ou igual* 
- <= *Menor ou igual*
- \>  *Maior*
- <  *Menor*

### Sintaxe

```dart
if(teste_logico)
{
    //faz isso se o teste for verdadeiro
}
else
{
    //faz isso se o teste for falso
}
```

### Exemplo if :floppy_disk:
```dart
string curso = "programador android";

if(curso == "programador android")
{
    print("Parabéns, você faz ótimas escolhas.");
}
else
{
    print("Vacilão, aposto que você faz ADM.");
}
```
### Exemplo if 2

```dart
void main() {
	double nota1, nota2, media;
  nota1 = 5;
  nota2 = 2;
  media = (nota1 + nota2) / 2;
  if(media >= 5)
  {
  		print("Aprovado com média $media");
  }
  else
  {
    	print("Reprovado com média $media");
  }
}
```
