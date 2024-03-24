import 'encapsulamento.dart';

class PessoaJuridica extends Pessoa{
  String? _CNPJ;
  PessoaJuridica(String nome, String endereco, String CNPJ) : super(nome, endereco){
    _CNPJ = CNPJ;
  }

  String? get getCNPJ => _CNPJ;
}