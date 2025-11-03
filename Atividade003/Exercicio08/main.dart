// 8. Transformação de Lista de Palavras em Lista de Comprimentos
// Dada uma lista de palavras, crie uma nova lista de inteiros onde cada inteiro representa o 
// número de caracteres da palavra correspondente na lista original.

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