import "dart:io";

void main() {
  ContaBancaria conta1 = criarCadastro();
}

ContaBancaria criarCadastro() {
  print("Digite seu nome");
  String nome = stdin.readLineSync()!;
  print("Digite sua idade");
  int idade = int.parse(stdin.readLineSync()!);

  if (idade >= 18) {
    ContaBancaria conta1 = ContaBancaria(nome, idade, 0, true);
    print("Conta bancaria criada");
    return conta1;
  } else {
    print("Idade insuficiente");
    return exit(0);
  }
}

class ContaBancaria {
  String _nome = "";
  int _idade = 0;
  num _saldo = 0;
  bool _nomeLimpo = true;

  ContaBancaria(String nome, int idade, num saldo, bool nomeLimpo);

  String get getName => _nome;
  int get getIdade => _idade;
  num get getSaldo => _saldo;
  bool get getMoral => _nomeLimpo;
  //metodos bancarios

  void depositar(double valor) {
    _saldo += valor;
    print("Saldo atual: $_saldo");
  }

  void sacar(double saque) {
    _saldo -= saque;
    if (saque <= _saldo) {
      _saldo -= saque;
    }
    else {
      print("saldo insuficiente");
    }
  }

  void emprestimo(double valor) {
    if (_idade >= 18 && _nomeLimpo) {
      _saldo += valor;
      print("Saldo Atual: $_saldo");
    } 
    else {
      print("Emprestimo negado");
    }
  }
}
