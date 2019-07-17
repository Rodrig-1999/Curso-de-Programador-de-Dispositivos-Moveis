class Login {
  //Esses são os ATRIBUTOS da classe
  int id;
  String usuario;
  String senha;

  //Construtor preenchido
  Login(this.id, this.usuario, this.senha);

  Login.fromJSON(Map<String, dynamic> json){
    id = json["id"];
    usuario = json["usuario"];
    senha = json["senha"];
  }
}