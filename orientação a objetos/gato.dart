void main(){
  Gato myCat = Gato("Cleitim", "sla", "Roxo", "Não Binarie");
  print(myCat.catName);
  print(myCat.catgender);
  print(myCat.catColor);
  print(myCat.catRaca);

}

class Gato{
  String _nome = "";
  String _raca = "";
  String _cor = "";
  String _genero = "";

  Gato(String nome, String raca, String cor, String genero){
    _nome = nome;
    _raca = raca;
    _cor = cor;
    _genero = genero;
  }

  String get catName => _nome;
  String get catRaca => _raca;
  String get catColor => _cor;
  String get catgender => _genero; 
}