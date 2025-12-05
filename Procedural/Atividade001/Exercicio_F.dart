// Faça um programa que receba um número inteiro e mostre seu sucessor e antecessor.
import 'dart:io';

void main(){
  stdout.write('Insira um número inteiro: ');
  String? numero = stdin.readLineSync();

  // if(numero != null && numero != '') {
  //   int valor = int.parse(numero);

  //   int antecessor = valor - 1;
  //   int sucessor = valor + 1;

  //   print('$antecessor é antecessor de: $valor e o sucessor é: $sucessor');

  // } else {
  //   print('Insira apenas valores não nulos e vazios');
  // }

  // Código mais enxuto
  try {
    int valor = int.parse(numero!);

    int antecessor = valor - 1;
    int sucessor = valor + 1;

    print('$antecessor é antecessor de: $valor e o sucessor é: $sucessor.');
  } catch(e){
    print('Insira apenas valores númericos e não nulos e vazios.');
    print('Detalhes: $e');
  }
}