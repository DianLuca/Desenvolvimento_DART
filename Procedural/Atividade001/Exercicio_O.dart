// Faça um programa que leia uma variável e some 5 caso seja par ou some 8 caso seja ímpar, imprimir o resultado desta operação.
import 'dart:io';

void main(){
  stdout.write('Insira um número inteiro qualquer: ');
  String? numero = stdin.readLineSync();

  try{
    double valor = double.parse(numero!);
    double resultado;
    if (valor % 2 == 0) {
      resultado = valor + 5;
      print('Resultado: $resultado');
    } else {
      resultado = valor + 8;
      print('Resultado: $resultado');
    }

  }catch(e){
    print('Insira apenas valores númericos e não nulos e vazios.');
    print('Detalhes: $e');
  }
}