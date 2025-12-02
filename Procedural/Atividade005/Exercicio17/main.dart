// 17. Normalização e Classificação de Dados
// Dada uma lista de strings com valores duplicados e em ordem aleatória, o objetivo é 
// primeiro remover todas as duplicatas e, em seguida, ordenar a lista resultante em ordem 
// alfabética.
import 'dart:io';

List<dynamic> listaAleatoria = [7, 3, 9, 3, 1, 8, 2, 7, 5, 9, 4, 1, 6, 8, 2];
// List<dynamic> listaAleatoria = ["banana", 42, 3.14, "gato", 17, 2.71, "banana", 99, 8.5, "lua", 17, "sol", 5.0, 42, "estrela"];

void finalizar() {
  stdout.write('\nDeseja encerrar o sistema(s - sim | n - não)? ');
  String? sair = stdin.readLineSync();

  if(sair != null && sair.trim().isNotEmpty && sair == 's'){
    print('Programa encerrado!');
    exit(0);
  } else {
    // palavras.clear();
  }
}
void main() {
  while(true){
      List<dynamic> listaUnicos = listaAleatoria.toSet().toList();

      print(listaAleatoria);

      listaUnicos.sort();
      print(listaUnicos);

      finalizar();
  }
}