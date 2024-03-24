import "dart:io";

import '../underfined/myfolderoffunction.dart';
void main(){
  //objetos
  Carro huracan = Carro();
  huracan.codigo = 1001;
  huracan.marca = "lamborghini";
  huracan.modelo = "super - esportivo";
  huracan.preco = 3500.000;
  huracan.velocidademax = "410 Km/h";
  huracan.nome = "huracan";

  Carro f458italia = Carro();
  f458italia.codigo = 1002;
  f458italia.marca = "ferrari";
  f458italia.modelo = "super - esportivo";
  f458italia.preco = 2500.000;
  f458italia.velocidademax = "390 Km/h";
  f458italia.nome ="458italia";

  Carro regera = Carro();
  regera.codigo = 1003;
  regera.marca = "koegnisegg";
  regera.modelo = "super - esportivo";
  regera.preco = 6500.000;
  regera.velocidademax = "430 Km/h";
  regera.nome = "regera";

  Carro p1 = Carro();
  p1.codigo = 1004;
  p1.marca = "mclaren";
  p1.modelo = "super - esportivo";
  p1.preco = 6500.000;
  p1.velocidademax = "410 Km/h";
  p1.nome = "p1 - senna";

  Carro carreiragt = Carro();
  carreiragt.codigo = 1005;
  carreiragt.marca = "porsche";
  carreiragt.modelo = "super - esportivo";
  carreiragt.preco = 1500000;
  carreiragt.velocidademax = "380 Km/h";
  carreiragt.nome = "carreira-gt";
  //fim dos objetos

  //processo de intermedio
  var venda = ("""
${"_" * 75}
codigo|nome do veiculo| marca     | modelo          |preço |velocidade max|
${huracan.codigo}  |${huracan.nome}        |${huracan.marca}|${huracan.modelo}|${huracan.preco}|${huracan.velocidademax}      |
${f458italia.codigo}  |${f458italia.nome}      |${f458italia.marca}    |${f458italia.modelo}|${f458italia.preco}|${f458italia.velocidademax}      |
${regera.codigo}  |${regera.nome}         |${regera.marca} |${regera.modelo}|${regera.preco}|${regera.velocidademax}      |
${p1.codigo}  |${p1.nome}     |${p1.marca}    |${p1.modelo}|${p1.preco}|${p1.velocidademax}      |
${carreiragt.codigo}  |${carreiragt.nome}    |${carreiragt.marca}    |${carreiragt.modelo}|${carreiragt.preco}|${carreiragt.velocidademax}     |
${"-" * 75}""");
print(venda);
//pedido do codigo do veiculo
print("""digite o codigo do veiculo que você deseja comprar: |""");
int codigo = int.parse(stdin.readLineSync()!);
print("""${"-" * 75}""");
//variaveis necessarias do if e else
num total;

var resultado;
var quinzepor100;

if(codigo == 1001){
print("você deseja comprar a Lamborghini Huracan  \nOtima escolha :) \n");
stdout.write("digite a quantidade de veiculos que pretende comprar: ");
num quantidade = int.parse(stdin.readLineSync()!);
 resultado = multiplicacao(huracan.preco, quantidade);
 quinzepor100 = resultado*100/15;
//total = resultado + quinzepor100; }
}

else if(codigo == 1002){
print("você deseja comprar a Ferrari 458 Italia  \nOtima escolha :)");
stdout.write("digite a quantidade de veiculos que pretende comprar: ");
num quantidade = int.parse(stdin.readLineSync()!);
 resultado = multiplicacao(f458italia.preco, quantidade);

}

else if(codigo == 1003){
print("você deseja comprar o Koegnisegg Regera");
stdout.write("digite a quantidade de veiculos que pretende comprar:  \nOtima escolha :) ");
num quantidade = int.parse(stdin.readLineSync()!);
 resultado = multiplicacao(regera.preco, quantidade);
 }

else if(codigo == 1004){
print("você deseja comprar a Mclaren P1- Senna  \nOtima escolha :)");
stdout.write("digite a quantidade de veiculos que pretende comprar: ");
num quantidade = int.parse(stdin.readLineSync()!);
 resultado = multiplicacao(p1.preco, quantidade);
 }

else if(codigo == 1005){
print("você deseja comprar a Porsche CarreiraGt \nOtima escolha :)");
stdout.write("digite a quantidade de veiculos que pretende comprar: ");
num quantidade = int.parse(stdin.readLineSync()!);
resultado = multiplicacao(carreiragt.preco, quantidade);
}

else{print("esse veiculo não esta credenciado em nossa loja");}

//acrescimo de 15%
if(resultado > 8000000){quinzepor100 = resultado*100/15;
total = resultado + quinzepor100;
total.toStringAsFixed(3);
resultado.toStringAsFixed(3);
print("""
${"_" * 75}
você devera pagar um valor de acrescimo de 15% por passar a taxa de 8Mi ou seja: $quinzepor100
sendo assim seu valor total é de $total
${"_" * 75}
parabens pela compra :)
${"-" * 75} """);}

else{print("""
${"_" * 75}
sua compra deu o valor de $resultado \nparabens pela aquisição
${"-" * 75}""");}


}

class Carro{
 num? codigo;
 String marca = "este veiculo não possui uma marca";
 String modelo = "este veiculo não possui um modelo";
 num preco = 0;
 String velocidademax = "este veiculo não possui uma velocidade maxima definida";
 String nome = "este veiculo não possui um nome definido";



}

 num multiplicacao(num a, num b){
  num resultado = a * b;
  return resultado;
 }