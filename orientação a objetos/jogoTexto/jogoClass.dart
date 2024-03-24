import 'dart:math';
import 'dart:io';

class Personagem {
  String nome;
  int vida;
  int ataque;
  int defesa;
  int poder;

  Personagem(this.nome, this.vida, this.ataque, this.defesa, this.poder);

  void atacar(Personagem alvo, {bool especial = false}) {
    int dano;

    if (especial) {
      if (poder >= 10) {
        dano = ataque * 2 - alvo.defesa;
        print("$nome usou ataque especial contra ${alvo.nome}");
      } else {
        print("$nome não tem poder suficiente para usar um ataque especial");
        dano = 0;
      }
    }
    else{
      dano = ataque - defesa;
      print("$nome atacou ${alvo.nome} e causou $dano dano");
    }

    alvo.vida -= dano;
    alvo.vida <= 0? print("O ${alvo.nome} está morto") : print("A vida do oponente é igual a ${alvo.vida}");
  }

}

void jogar(){
  List<Personagem> personagens = [
    Personagem("mago", 200, 100, 500, 1000),
    Personagem("gigante", 600, 400, 900, 0),
    Personagem("cavaleiro", 100, 50, 300, 0)
  ];

  Random random = Random();
  Personagem computador = personagens[random.nextInt(personagens.length)];

  print("Escolha seu personagem: ");
  print("personagens: ");
  for(int i = 0; i < (personagens.length); i++){
    print("${i}- ${personagens[i].nome}");
  }
  print("");
  int opcao1 = int.parse(stdin.readLineSync()!);
  Personagem jogador = personagens[opcao1];

  print("você escolheu o ${jogador.nome}");
  print("o computador escolheu o ${computador.nome}");

  while(jogador.vida > 0 && computador.vida > 0){
    print("pressione enter para continuar: ");
    stdin.readLineSync()!;
    print('\x1B[2J]\x1B[0;0H');

    print("""
Turno jogador
escolha um ataque: 
1 - ataque simples
2 - ataque especial
3 - sair""");

int ataqueEscolhido = int.parse(stdin.readLineSync()!);

switch(ataqueEscolhido){
  case 1:
    jogador.atacar(computador);
    break;
  case 2:
    jogador.atacar(computador, especial: true);
    break;
  case 3:
    return;
  default:
  print("opção invalida");
}
  }
}