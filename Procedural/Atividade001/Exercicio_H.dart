// Faça um programa que converta medidas
import 'dart:io';

void main(){
  print('CONVERSOR DE METROS PARA CENTÍMETROS E QUILÔMETROS:');

  stdout.write('Insira o valor em metros para ser convertido: ');
  String? valor = stdin.readLineSync();

  try {
    double metros = double.parse(valor!);

    double centimetros = metros * 100;
    double quilometros = metros / 1000;

    print('${metros.toStringAsFixed(2)}m corresponde: \n${centimetros.toStringAsFixed(0)}cm. \n${quilometros.toStringAsFixed(3)}Km.');
  } catch (e) {
    print('Insira apenas valores númericos e não nulos e vazios.');
    print('Detalhes: $e');
  }
}