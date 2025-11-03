// 7. Criação de Frase com Filtro
// Dada uma lista de strings, crie uma única string (frase) concatenando apenas as palavras que 
// terminam com a letra 'R' (maiúscula ou minúscula). As palavras devem ser separadas por um espaço
// na frase final.

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