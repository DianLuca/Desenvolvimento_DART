// 16. Interseção de Duas Listas
// Dadas duas listas de inteiros, crie uma nova lista contendo apenas os elementos que estão 
// presentes em ambas as listas (a interseção).
import 'dart:io';

List<int> numeros = [5, 6, 7, 8, 9, 10, 11];
List<int> numeros1 = [1, 2, 3, 4, 5, 5, 6, 7, 8];
List<int> intersecao = [];


void main() async{
  while(true){
      for(int num in numeros){
        for (int num1 in numeros1) {
          if(num == num1){
            intersecao.add(num);
          }
        }
      }

      intersecao.forEach((valorPresente) => print(valorPresente));

      stdout.write('\nDeseja encerrar o sistema(s - sim | n - não)? ');
      String? sair = stdin.readLineSync();

      if(sair != null && sair.trim().isNotEmpty && sair == 's'){
          print('Programa encerrado!');
          break;
      }
  }
}