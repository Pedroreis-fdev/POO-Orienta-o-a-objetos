void main(){
//criação de uma pessoa
pessoa primeirohumano = pessoa();
primeirohumano.nome = "cleitinho";
primeirohumano.idade = 22;
primeirohumano.sexualidade = "lésbico";
primeirohumano.nacionalidade = "paulista "/*to de meme seria brasileiro*/;

//ação de fazer aniversario, primeiro mostrará a idade atual, dps a mensagem printada na ação dentro da classe e dps a nova idade
print(primeirohumano.idade);
primeirohumano.aniversario();
primeirohumano.aniversario();
print(primeirohumano.idade);

print(primeirohumano.nome);
primeirohumano.TrocarNome("cleitu");
print(primeirohumano.nome);


}
//criação de uma classe
class pessoa {
  String? nome;
  int? idade;
  String? sexualidade;
  String? nacionalidade;


void aniversario(){
  print("parabens $nome");
  if(idade != null){idade! + 1;
  }
}
void TrocarNome(String n){
  nome = n;
}
}


