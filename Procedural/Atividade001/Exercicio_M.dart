// Faça um algoritmo que leia dois valores de A e B. Se os valores forem iguais multiplique A por B. Ao Final de qualquer um dos cálculos 
// deve-se atribuir o resultado para uma variável C e mostrar seu conteúdo na tela.
import 'dart:io';

void main(){
  stdout.write('Insira um número inteiro para o valor de A: ');
  String? numeroA = stdin.readLineSync();
  stdout.write('Insira um número inteiro para o valor de B: ');
  String? numeroB = stdin.readLineSync();

  try{
    double valorC;

    double valorA = double.parse(numeroA!);
    double valorB = double.parse(numeroB!);

    if(valorA == valorB) {
      print('Valores iguais sempre serão multiplicados.');
      valorC = valorA * valorB;
      print('Resultado: ${valorC.toStringAsFixed(2)}');
    } else {
      print('Valores diferentes sempre serão somados.');
      valorC = valorA + valorB;
      print('Resultado: ${valorC.toStringAsFixed(2)}');
    }
  }catch(e){
    print('Insira apenas valores númericos e não nulos e vazios.');
    print('Detalhes: $e');
  }
}