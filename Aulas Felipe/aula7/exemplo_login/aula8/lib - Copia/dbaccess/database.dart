import 'dart:io';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Database db;

//Essa é a classe que cria a conexão com o banco de dados
//É como se fosse o SQLiteStudio, ou seja, ele conecta com o banco!!
class DBCreator {
  //1º) Método que inicializa o banco de dados!
  //É comando principal que é chamado no main(), antes do runApp()
  Future<void> initDatabase() async {
    var caminho = await pegaCaminhoBanco("db_aplicativo");
    print(caminho);
    db = await openDatabase(caminho, version: 1, onCreate: criarTabelas);
  }

  //2º) Pega o caminho do banco de dados
  Future<String> pegaCaminhoBanco(String dbNome) async {
    var caminhoDb = await getDatabasesPath();
    String caminhoFinal = join(caminhoDb, dbNome);

    //Verificar se o diretório ainda não foi criado.
    //Caso NÃO (!) exista, criar uma nova pasta.
    if(!await Directory(dirname(caminhoFinal)).exists()){
      await Directory(dirname(caminhoFinal)).create(recursive: true);
    }
    return caminhoFinal;
  }

  //3º) Esse método é utilizado para, caso haja mais tabelas para criar,
  // colocar a chamado dos outros métodos aqui
  Future<void> criarTabelas(Database data, int versao) async {
    await criarTabelaLogin(data);
    //Se tivesse mais tabelas para criar, chamar os métodos abaixo. exemplo:
    // await criarTabelaProduto(data);
  }

  //4º) Esse é método é para executar o comando de criar a tabela no bd
  //Tá vendo o CREATE ali? Sim, é SQL!!
  Future<void> criarTabelaLogin(Database data) async {
    String sql = """CREATE TABLE tb_login 
    (
        id      INTEGER PRIMARY KEY AUTOINCREMENT
                        NOT NULL,
        usuario TEXT    NOT NULL,
        senha   TEXT    NOT NULL
    );""";

    await data.execute(sql);
  }

}


