// 16. Interseção de Duas Listas
// Dadas duas listas de inteiros, crie uma nova lista contendo apenas os elementos que estão 
// presentes em ambas as listas (a interseção).
import 'dart:io';

List<int> primeiraLista = [5, 6, 7, 8, 9, 10, 11];
List<int> segundaLista = [1, 2, 3, 4, 5, 5, 6, 7, 8];
List<int> intersecao = [];

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

List verificarIntersecao({
  required List<int> primeiraLista,
  required List<int> segundaLista
}){
  // Para remover os elementos repetidos
  primeiraLista = primeiraLista.toSet().toList();
  segundaLista = segundaLista.toSet().toList();

  for(int num in primeiraLista){
    for (int num1 in segundaLista) {
      if(num == num1){
        intersecao.add(num);
      }
    }
  }
  return intersecao;
}

void main() async{
  while(true){
    print("\x1B[2J\x1B[0;0H");

    verificarIntersecao(primeiraLista: primeiraLista, segundaLista: segundaLista);

    intersecao.forEach((valorPresente) => stdout.write('${valorPresente} | '));

    finalizar();
  }
}