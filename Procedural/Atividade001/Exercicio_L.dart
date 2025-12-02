// Faça um programa que receba um valor e exiba se ele é par ou ímpar
import 'dart:io';

void main(){
  stdout.write('Insira um número inteiro: ');
  String? numero = stdin.readLineSync();

  try{
    int valor = int.parse(numero!);

    if (valor % 2 == 0) {
      print('O $numero é par.');
    } else {
      print('O $numero é ímpar.');
    }

  }catch(e){
    print('Insira apenas valores númericos e não nulos e vazios.');
    print('Detalhes: $e');
  }
}