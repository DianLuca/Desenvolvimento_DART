// 5. Determinação do Segundo Valor de Pico
// Dada uma lista de números inteiros, encontre e imprima o segundo maior valor presente na lista. A lista pode 
// conter duplicatas, mas o segundo maior valor deve ser o valor distinto que é imediatamente menor que o maior valor.
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