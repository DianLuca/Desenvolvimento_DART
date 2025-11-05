// 2. Identificação e Contagem de Ocorrências Distintas
// Dada uma lista de inteiros que contém valores duplicados, o desafio é determinar quantos valores únicos existem na lista.
// A solução deve percorrer a lista e construir uma nova coleção (ou usar um Set temporário, se permitido, ou uma 
// lista auxiliar) para armazenar apenas os elementos que ainda não foram vistos, reportando o total de elementos únicos ao final.
import 'dart:io';

List<int> numeros = [2, 5, 5, 7, 10, 20, 20];
List<int> numerosDiferentes = [];
void main() {
    while(true){
      
      for (int num in numeros){
        int contador = 0;
        for (int valor in numeros){
          if(num == valor){
            contador++;
          }
        }

        if(contador == 1){
          numerosDiferentes.add(num);
        }
      }

      print(numeros.toSet().toList());

      print(numerosDiferentes);
      
      stdout.write('\nDeseja encerrar o sistema(s - sim | n - não)? ');
      String? sair = stdin.readLineSync();

      if(sair != null && sair.trim().isNotEmpty && sair == 's'){
          print('Programa encerrado!');
          break;
      } else {
        numeros.clear();
      }
    }
}