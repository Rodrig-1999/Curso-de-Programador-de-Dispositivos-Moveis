# SENAC
Curso Desenvolvimento de Aplicativos Móveis
Usando **DART** e **FLUTTER**

## Aula 2

### Exercício

/nrenda_pessoa.toStringAsFixed(2)
/nO método toStringAsFixed() foi usado para formatar as casas (2) decimais da variável(renda_pessoa) double.

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
Condição Lógica IF
O IF serve para determinar se um bloco de instruções deve ou não ser executado, pode-se dizer que sempre que for necessário testar algum valor usaremos o if.

Operadores Lógicos
== Igualdade
!= Diferente
>= Maior ou igual
<= Menor ou igual
> Maior
< Menor
Sintaxe
if(teste_logico)
{
    //faz isso se o teste for verdadeiro
}
else
{
    //faz isso se o teste for falso
}

Exemplos IF

1)
string curso = "programador android";

if(curso == "programador android")
{
    print("Parabéns, você faz ótimas escolhas.");
}
else
{
    print("Vacilão, aposto que você faz ADM.");
}


2)
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
