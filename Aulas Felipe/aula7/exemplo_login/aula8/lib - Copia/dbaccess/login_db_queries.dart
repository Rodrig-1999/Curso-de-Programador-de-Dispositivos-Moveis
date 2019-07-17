import 'package:exemplo_login/dbaccess/database.dart';
import 'package:exemplo_login/models/mlogin.dart';

//Essa classe faz os comandos (queries) no banco
//É como se fosse dentro do SQLiteStudio, quando criamos uma nova consulta
// (quando clica naquele papelzinho branco com lápis)
class LoginDbQueries {

  //1° método) SELECT
  //É aqui que será realizado o comando de seleção no banco
  static Future<Login> getLogin(String usuario, String senha) async {
    String sql = '''SELECT * FROM tb_login
      WHERE usuario = "$usuario" AND senha = "$senha"
    ''';

    //rawQuery é o método que executa o SELECT no banco
    var result = await db.rawQuery(sql);

    Login l;
    //IF-ELSE convencional
    //Verifica se o resultado não é vazio
    if (result.isNotEmpty){
      //Se não for, carrega o objeto
      l = Login.fromJSON(result.first);
    } else {
      //Se for, não carrega o objeto
      l = null;
    }

    //IF-ELSE ternário, ou também, if de uma linha só
    //l = result.isNotEmpty ? Login.fromJSON(result.first) : null;

    if (l != null){
      print("usuário : ${l.usuario} \n senha: ${l.senha}");
    } else {
      print("Usuário ou senha não encontrados");
    }
    return l;

  }

  //2° método) INSERT
  //É aqui que vamos adicionar um novo login
  static Future<void> addLogin(Login obj) async {
    String sql = '''INSERT INTO tb_login (
                         senha,
                         usuario
                     )
                     VALUES (
                         "${obj.senha}",
                         "${obj.usuario}"
                     );
    ''';

    await db.rawInsert(sql);
  }
}