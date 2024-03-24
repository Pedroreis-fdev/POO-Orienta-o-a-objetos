abstract class Pessoa {
    String _nome = "";
    String _endereco = "";

    Pessoa(String nome, String endereco){
      _nome = nome;
      _endereco = endereco;
    }

// get conciso
String get getName => _nome;

// get manipulavel
String getAdress(){
  return _endereco;
}

    
}