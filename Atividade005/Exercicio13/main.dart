// 13. Mapeamento de Mapas para Strings Formatadas
// Dada a lista de Maps do exercício anterior (Produtos), crie uma nova lista de strings onde 
// cada string é um resumo formatado do produto, no formato: "Produto [Nome] - Estoque: [Estoque]".

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