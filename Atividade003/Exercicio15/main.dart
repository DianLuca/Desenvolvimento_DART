// 15. Contagem de Ocorrências de Status
// Dada uma lista de Maps, onde cada Map representa uma tarefa com a chave "status" 
// (String), conte e imprima o número total de tarefas para cada status distinto.

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