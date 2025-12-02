// Faça um programa que receba um número qualquer e calcule o dobro e o triplo desse número.
import 'dart:io';

void main(){
  stdout.write('Insira um número qualquer: ');
  String? numero = stdin.readLineSync();

  try {
    double valor = double.parse(numero!);

    double dobro = valor * 2;
    double triplo = valor * 3;

    stdout.write('O dobro de $valor é: $dobro.');
    stdout.write('\nO triplo de $valor é: $triplo.');
  } catch(e) {
    print('Insira apenas valores númericos e não nulos e vazios.');
    print('Detalhes: $e');
  }
}