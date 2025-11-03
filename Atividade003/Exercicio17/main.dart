// 17. Normalização e Classificação de Dados
// Dada uma lista de strings com valores duplicados e em ordem aleatória, o objetivo é 
// primeiro remover todas as duplicatas e, em seguida, ordenar a lista resultante em ordem 
// alfabética.

import 'dart:io';
void main() {
  while(true){
      
      stdout.write('\nDeseja encerrar o sistema(s - sim | n - não)? ');
      String? sair = stdin.readLineSync();

      if(sair != null && sair.trim().isNotEmpty && sair == 's'){
          print('Programa encerrado!');
          break;
      }
  }
}