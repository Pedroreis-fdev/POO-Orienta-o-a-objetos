abstract class Animal{
  String? _name;
  int? _age;

  Animal(String name, int age){
    _name = name;
    _age = age;
  }

  String emitirSom();

  String? get getName => _name;
  int? get getAge => _age;

  set atribuirNome(String newName) => _name = newName;
  set atribuirIdade(int newAge) => _age = newAge;
}