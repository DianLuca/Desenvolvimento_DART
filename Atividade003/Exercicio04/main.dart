// 4. Multiplicação de Elementos Ímpares
// Percorra uma lista de números inteiros. Para cada número, verifique se ele é ímpar. Se for ímpar, ele deve ser multiplicado por 2. 
// Se for par, ele deve permanecer inalterado. O resultado final deve ser uma nova lista com os valores transformados.
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