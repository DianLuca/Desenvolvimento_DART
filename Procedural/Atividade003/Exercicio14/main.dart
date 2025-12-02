// 14. Encontrando o Item Mais Caro
// Dada uma lista de Maps, onde cada Map representa um item com as chaves "nome" (String) e 
// "preco" (double), encontre e imprima o nome do item que possui o maior preço.

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