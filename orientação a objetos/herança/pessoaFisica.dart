import 'encapsulamento.dart';

class PessoaFisica extends Pessoa{
  String? _CPF;
  
  PessoaFisica(String nome, String endereco, String CPF) : super(nome, endereco){
    _CPF = CPF;
  }

  String? get getCPF => _CPF;
}