// 18. Checagem de Inclusão Total de Elementos
// Dadas duas listas de inteiros, Lista Principal e Lista Subconjunto, verifique se todos 
// os elementos da Lista Subconjunto estão presentes na Lista Principal. O resultado deve 
// ser um valor booleano (true ou false).
import 'dart:io';

List<int> numeros = [5, 6, 7, 8, 9, 10, 11];
List<int> numeros1 = [1, 2, 3, 4, 5, 5, 6, 7, 8];

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

    // every verifica se todos os valores consta e retorna true ou false 
    // contains verifica se o valor está presente
    print('Todos os valores estão em ambas as listas: ${numeros1.every((num) => numeros.contains(num))}.');

    finalizar();
  }
}