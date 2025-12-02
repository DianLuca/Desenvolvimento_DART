// Sequência de potências:Faça um programa que receba um número inteiro N e imprima as potências de 2 de 0 até N (2⁰, 2¹, ..., 2ᴺ).
import 'dart:io';
import 'dart:math';
void main() {
  while(true){
      print('----- Sequência de potências -----');
      stdout.write('Insira um valor inteiro qualquer para base: ');
      String? entradaBase = stdin.readLineSync();
      stdout.write('Insira até que valor inteiro deseja exponenciar: ');
      String? entradaExpoente = stdin.readLineSync();

      try {
        int base = int.parse(entradaBase!.trim());
        int expoente = int.parse(entradaExpoente!.trim());
        
        for(int i = 0; i <= expoente; i++){
          int resultado = pow(base, i).toInt();
          print('A potência de  base ${base} elevado a ${i} = ${resultado}.');
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