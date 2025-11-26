// 4. Multiplicação de Elementos Ímpares
// Percorra uma lista de números inteiros. Para cada número, verifique se ele é ímpar. Se for ímpar, ele deve ser multiplicado por 2. 
// Se for par, ele deve permanecer inalterado. O resultado final deve ser uma nova lista com os valores transformados.
import 'dart:io';
List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
List<int> numerosImparesIterados = [];
void main() async{
  while(true){

      for (int num in numeros){
        if (num % 2 != 0){
          numerosImparesIterados.add(num * 2);
        } else {
          numerosImparesIterados.add(num);
        }
      }

      numerosImparesIterados.sort();

      print(numerosImparesIterados);

      stdout.write('\nDeseja encerrar o sistema(s - sim | n - não)? ');
      String? sair = stdin.readLineSync();

      if(sair != null && sair.trim().isNotEmpty && sair == 's'){
          print('Programa encerrado!');
          break;
      }
  }
}