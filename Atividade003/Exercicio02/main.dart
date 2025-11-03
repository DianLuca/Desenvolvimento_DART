// 2. Identificação e Contagem de Ocorrências Distintas
// Dada uma lista de inteiros que contém valores duplicados, o desafio é determinar quantos valores únicos existem na lista.
// A solução deve percorrer a lista e construir uma nova coleção (ou usar um Set temporário, se permitido, ou uma 
// lista auxiliar) para armazenar apenas os elementos que ainda não foram vistos, reportando o total de elementos únicos ao final.

import 'dart:io';
void main() {
    while(true){
        
      print('');
      stdout.write('Deseja encerrar o sistema(s - sim | n - não)? ');
      String? sair = stdin.readLineSync();

      if(sair != null && sair.trim().isNotEmpty && sair == 's'){
          print('Programa encerrado!');
          break;
      }
    }
}