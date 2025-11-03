// 20. Particionamento de Lista em Positivos e Não-Positivos
// Dada uma lista de números inteiros (positivos, negativos e zero), crie uma nova lista 
// onde todos os números positivos aparecem primeiro, seguidos pelos números não-positivos 
// (zero e negativos). A ordem relativa dentro de cada grupo deve ser mantida.
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