// Faça um programa para encontrar o dobro de um número caso seja positivo e o seu triplo se for negativo, imprimindo o resultado.
import 'dart:io';

void main(){
  print('VALORES POSITIVO SERÃO MULTIPLICADOS POR 2 E NEGATIVOS POR 3');
  stdout.write('Insira um número inteiro: ');
  String? numero = stdin.readLineSync();

  try{
    double valor = double.parse(numero!);

    if (valor < 0) {
      double triplo = valor * 3;
      print('Resultado: ${triplo.toStringAsFixed(2)}');
    } else {
      double dobro = valor * 2;
      print('Resultado: ${dobro.toStringAsFixed(2)}');
    }

  }catch(e){
    print('Insira apenas valores númericos e não nulos e vazios.');
    print('Detalhes: $e');
  }
}