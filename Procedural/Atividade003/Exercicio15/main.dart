// 20. Particionamento de Lista em Positivos e Não-Positivos
// Dada uma lista de números inteiros (positivos, negativos e zero), crie uma nova lista 
// onde todos os números positivos aparecem primeiro, seguidos pelos números não-positivos 
// (zero e negativos). A ordem relativa dentro de cada grupo deve ser mantida.
import 'dart:io';

List<int> numeros = [0, -12, 34, -7, 25, -43, 18, -2, 9, -29, 50, -1, 6, -33, 12];
List<int> positivos = [];
List<int> negativos = [];
void main() {
  while(true){

    for (var num in numeros) {
      if(num > 0){
        positivos.add(num);
      } else {
        negativos.add(num);
      }
    }
    
    positivos.sort();
    negativos.sort();

    List<int> ordenado = [...positivos, ...negativos];

    print('A lista completa ordenada por positivos primeiro e negativo e 0 depois será: \n${ordenado}');

    stdout.write('\nDeseja encerrar o sistema(s - sim | n - não)? ');
    String? sair = stdin.readLineSync();

    if(sair != null && sair.trim().isNotEmpty && sair == 's'){
        print('Programa encerrado!');
        break;
    }
  }
}