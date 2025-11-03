// 16. Interseção de Duas Listas
// Dadas duas listas de inteiros, crie uma nova lista contendo apenas os elementos que estão 
// presentes em ambas as listas (a interseção).

import 'dart:io';
void main() async{
  while(true){
      stdout.write('\nDeseja encerrar o sistema(s - sim | n - não)? ');
      String? sair = stdin.readLineSync();

      if(sair != null && sair.trim().isNotEmpty && sair == 's'){
          print('Programa encerrado!');
          break;
      }
  }
}