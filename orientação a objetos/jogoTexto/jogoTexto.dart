import "dart:io";

import "jogoClass.dart";

void main(){

  bool jogarNovamente = true;
  while(jogarNovamente){
      print(" 1. Jogar \n 2. Sair");
      int opcao = int.parse(stdin.readLineSync()!);
  switch (opcao){
    case 1:
      jogar();
      break;
    case 2: 
      jogarNovamente = false;
      break;
    default:
    print("Opção invalida");
    }
  }
}
