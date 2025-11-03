// 18. Checagem de Inclusão Total de Elementos
// Dadas duas listas de inteiros, Lista Principal e Lista Subconjunto, verifique se todos 
// os elementos da Lista Subconjunto estão presentes na Lista Principal. O resultado deve 
// ser um valor booleano (true ou false).

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