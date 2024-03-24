import 'dart:io';

void main() {
  Carro corsa = Carro();
  corsa.marca = "Chevrolet";
  corsa.modelo = "HatchBack";
  corsa.ano = 1998;
  corsa.cv = 200;

  corsa.tunar(400);
  print(corsa.cv);
}

class pista {
  String? nome;
  num tamanho = 200;
  String? clima;
  num tempoClassificacao = 12.8;

  pista(this.nome, this.tamanho, this.tempoClassificacao, [this.clima]);
   
   _classTime(num tempo){
    this.tempoClassificacao < tempo? print("Aprovado com o tempo de: $tempo ") : print("reprovado");
    this.tempoClassificacao < tempo? this.tempoClassificacao = tempo : exit(0);
  }
}

class Carro {
  String? modelo;
  String? marca;
  int? ano;
  int cv = 0;
  num tempo = 9999;

  void tunar(int cavalos) {
    this.cv += cavalos;

    void tentarVolta(num tempo) {
      tempo = this.tempo;
    }
  }
}
