// 1. Filtragem e Soma Condicional de Pares
// Dada uma lista de números inteiros, o objetivo é primeiro filtrar apenas os números que são pares e, simultaneamente, maiores que 10. 
// Após a filtragem, deve-se calcular a soma total desses números restantes.
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