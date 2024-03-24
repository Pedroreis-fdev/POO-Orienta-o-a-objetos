void main(){
  Personagem Heroi = Personagem();
  Personagem gigante = Personagem();
  Heroi.nome = "slayerofgiants";
  gigante.nome = "gigante";
  gigante.HP = 500;

  Heroi.HeavyAttack(gigante);
  Heroi.HeavyAttack(gigante);

}



class Personagem{
  String? nome;
  int HP = 200;

//simple attack
  void Attack(Personagem alvo){
    //as chaves no alvo.nome serve para acessar os atributos do personagem denominado alvo
    print("você atacou ${alvo.nome}");
    // -= serve para excluir 5 pontos de vida pois se deixarmos apenas o = o personagem ficara com apenas 5 pontos de vida
    if(alvo.HP > 0){alvo.HP -= 5;
    print("${alvo.nome} esta com ${alvo.HP}");}
    
    else{print("${alvo.nome} esta morto! ");}
  }


  //heavy attack
   void HeavyAttack(Personagem alvo){
    //as chaves no alvo.nome serve para acessar os atributos do personagem denominado alvo
    print("você atacou ${alvo.nome} com um ataque forte");
    if(alvo.HP > 0){alvo.HP -= 520;
    print("${alvo.nome} esta com ${alvo.HP}");}
    else{print("${alvo.nome} esta morto!");}
  }
  }