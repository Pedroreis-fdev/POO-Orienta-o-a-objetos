import 'abstract.dart';

class Gato extends Animal{
  Gato(String nome, int idade) : super(nome, idade);

  @override
  String emitirSom(){
    return "Miau";
  }
}

class Dog extends Animal{
  Dog(String nome, int idade) : super(nome, idade);

  @override
  String emitirSom(){
    return "Au Au";
  }
}

void main(){
  Gato gato1 = Gato("toby", 2);
  Dog cachorro1 = Dog("ManoDogui", 1);
  print(cachorro1.emitirSom());
  print(gato1.emitirSom());

}
