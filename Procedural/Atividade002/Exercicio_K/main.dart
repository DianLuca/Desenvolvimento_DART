// Determinação do maior divisor comum (MDC): Faça um programa que receba dois números inteiros e calcule o MDC usando o algoritmo de Euclides com repetição.
import 'dart:io';
void main() {
  while(true){
      print('----- Determinação do maior divisor comum (MDC) -----');
      stdout.write('Insira o primeiro valor inteiro qualquer: ');
      String? entradaValor1 = stdin.readLineSync();
      stdout.write('Insira o segundo valor inteiro qualquer: ');
      String? entradaValor2 = stdin.readLineSync();
      
      try {
        int valor1 = int.parse(entradaValor1!);
        int valor2 = int.parse(entradaValor2!);

        int resto;
        
        if(valor1 < valor2){
          print('Não é possível realizar a operação, o primeiro valor deve ser maior que o segundo.');
          print('Inverta os valores e tente novamente!');
        } else {
          while(valor2 != 0){
            resto = valor1 % valor2;
            valor1 = valor2;
            valor2 = resto;
          }

          print('O MDC de ${entradaValor1} e ${entradaValor2} é igual a: ${valor1}.');
        }
        
        
      } catch (e) {
        print('Não foi possível realizar a verificação com os valores inseridos. Tente novamente!');
      }


      stdout.write('\nDeseja encerrar o sistema(s - sim | n - não)? ');
      String? sair = stdin.readLineSync();

      if(sair != null && sair.trim().isNotEmpty && sair == 's'){
          print('Programa encerrado!');
          break;
      }
  }
}