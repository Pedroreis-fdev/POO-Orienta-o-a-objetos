class Personagem{
  String _nome = "";
  int _vida = 200;

  Personagem(String nome, [vida]){
    _nome = nome;
    _vida = vida;
  }

  void ataque(Personagem alvo){
      print("Você atacou ${alvo. _nome}");
      alvo._vida -= 20;
      print("${alvo._nome} tem agora ${alvo._vida} pontos de vida");
  }
  int get curaSimples => _vida += 20;
  set mudarNome (String newName) => _nome = newName;

}

void main(){
  Personagem heroi = Personagem("cleiton");
  heroi.mudarNome = "marcos";
  Personagem vilao = Personagem("golem");
  vilao._nome = "Golem";

  heroi.ataque(vilao);
}