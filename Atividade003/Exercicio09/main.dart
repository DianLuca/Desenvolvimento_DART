// 9. Filtragem de Emails Válidos (Regra Simples)
// Dada uma lista de strings que supostamente são endereços de email, filtre e colete em uma nova lista 
// apenas os emails que contêm exatamente um caractere '@' e terminam com ".com".

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