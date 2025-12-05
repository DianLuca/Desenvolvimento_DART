// Faça um programa que receba e divida 2 números. A saída da divisão 
// precisará ser formatada com 4 casas decimais.
import 'dart:io';

void main() {
  stdout.write('Insira o primeiro valor: ');
  String? valor = stdin.readLineSync();
  stdout.write('Insira o segundo valor: ');
  String? valor1 = stdin.readLineSync();

  if((valor != null && valor1 != null) && ((valor != '' && valor1 != ''))) {
    try {
      double a = double.parse(valor);
      double b = double.parse(valor1);

      if(b != 0){
        double divisao = a / b;

        print('$a ÷ $b = ${divisao.toStringAsFixed(4)}');
      } else {
        print('Não é possível realizar divisões por 0!');
      }
    } catch (e) {
      print('$e \nInsira apenas valores númericos!');
    }
  } else {
    print('Insira apenas valores não nulos e vazios!');
  }
}