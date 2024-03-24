class Estudantes{
  String _nome = "";
  double? _nota;
  int _idade = 0;

  Estudantes(String nome, int idade, [nota]){
    _nome = nome;
    _nota = nota;
    _idade = idade;
  }

  String get getName => _nome;
  int get getAge => _idade;
  double? get getNota => _nota;

void integrarNota(double novaNota){  

    novaNota != null && novaNota <= 10 && novaNota >= 0? _nota = novaNota : _nota = 0;
}
}

void main(){
  Estudantes aluno1 = Estudantes("adalberto", 18);
  aluno1.integrarNota(9.0);
  print(aluno1.getNota);
}