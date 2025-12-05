// Faça um programa para calcular o IMC completo de uma pessoa.
// IMC = peso(kg) / altura(m)^2

// < 18,5 - abaixo do peso
// 18,5 - 24,9 Peso normal 
// 25 - 29,9 Sobrepeso 
// 30 - 34,9 Obesidade 1 
// 35 - 39,9 Obesidade 2 
// >40 Obesidade 3

import 'dart:io';
import 'dart:math';

void main(){
  stdout.write('Insira o peso: ');
  String? numeroA = stdin.readLineSync();
  stdout.write('Insira a altura: ');
  String? numeroB = stdin.readLineSync();

  try{
    double IMC;
    String peso = numeroA!.replaceAll(',', ',').trim();
    double pesoValor = double.parse(peso);

    String altura = numeroB!.replaceAll(',', '.').trim();
    double alturaValor = double.parse(altura);

    IMC = pesoValor / pow(alturaValor, 2);

    print("Seu IMC é de: ${IMC.toStringAsFixed(2)}");

    // Adicionar as faixas de peso

  }catch(e){
    print('Insira apenas valores númericos e não nulos e vazios.');
    print('Detalhes: $e');
  }
}