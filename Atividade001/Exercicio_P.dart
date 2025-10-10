// Faça um programa que leia três valores interios e diferentes e mostre-os em ordem decrescente.
import 'dart:io';

void main(){
  stdout.write('Insira um número inteiro para o valor de A: ');
  String? numeroA = stdin.readLineSync();
  stdout.write('Insira um número inteiro para o valor de B: ');
  String? numeroB = stdin.readLineSync();
  stdout.write('Insira um número inteiro para o valor de C: ');
  String? numeroC = stdin.readLineSync();

  try{

    int valorA = int.parse(numeroA!);
    int valorB = int.parse(numeroB!);
    int valorC = int.parse(numeroC!);

    if((valorA == valorB) || (valorC == valorB) || (valorA == valorC)) {
      print('Os valores são iguais, eles devem ser diferentes entre si.');
    } else {
      // Forma mais fácil com array

      // List<int> numeros = [valorA, valorB, valorC];
      // // Comparando os valores entre si
      // // DECRESCENTE
      // numeros.sort((x, y) => y.compareTo(x));
      // // CRESCENTE
      // // numeros.sort((x, y) => x.compareTo(y));
      // print('Valores em ordem decrescente: ${numeros[0]}, ${numeros[1]}, ${numeros[2]}');

      // Forma mais trabalhosa
      if (valorA > valorB && valorA > valorC) {
        if (valorB > valorC) {
          print('$valorA, $valorB, $valorC');
        } else {
          print('$valorA, $valorC, $valorB');
        }
      } else if (valorB > valorA && valorB > valorC) {
        if (valorA > valorC) {
          print('$valorB, $valorA, $valorC');
        } else {
          print('$valorB, $valorC, $valorA');
        }
      } else {
        if (valorA > valorB) {
          print('$valorC, $valorA, $valorB');
        } else {
          print('$valorC, $valorB, $valorA');
        }
      }
    }
  }catch(e){
    print('Insira apenas valores númericos e não nulos e vazios.');
    print('Detalhes: $e');
  }
}