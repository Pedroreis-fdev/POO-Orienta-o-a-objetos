//import 'dart:io';
void main(){
carro aventador = carro();
aventador.marca = "lamborghini";
aventador.nome = "aventador";
aventador.modelo = "super - esportivo";
aventador.AnoDeFabricacao = "2011" ;
aventador.cor = "laranja";
aventador.velocidade = 415;

carro F458italia = carro();
F458italia.marca = "ferrari";
F458italia.nome = "458 Italia";
F458italia.modelo = "super - esportivo";
F458italia.AnoDeFabricacao = "2010";
F458italia.cor = "vermelho";
F458italia.velocidade = 390;
F458italia.fichaTecnica();



}

class carro{

  String marca = "esse carro não tem uma marca definida";
  String nome = "esse carro não tem um nome definido";
  String modelo = "esse carro não tem um modelo definido";
  var AnoDeFabricacao = "esse carro não tem um ano de fabricação definido";
  num velocidade = 0;
  String cor = "esse carro não tem uma cor definida";

  void aumentarvelocidade(){
  velocidade = velocidade + 10;
  }

void fichaTecnica(){
  print("""



${"-" * 150}
A marca desse veiculo é : $marca
O nome do veiculo é : $nome
O modelo do veiculo é : $modelo
O ano de fabricação do veiculo é : $AnoDeFabricacao
A cor do veiculo é : $cor
A velocidade do veiculo : $velocidade
${"-" * 150}


""");}

}